import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';
import * as algolia from 'algoliasearch';

admin.initializeApp();

const client = algolia.default('J754OR2W4U', 'c2bcca34e45da7e4e55f20d7143bc906');
const index = client.initIndex('users')

// noinspection JSUnusedGlobalSymbols
export const onCreateLike = functions
  .firestore
  .document('likes/{likeId}')
  .onCreate(async (snapshot) => {
    const type = snapshot.data()!.type;
    const parentId = snapshot.data()!.parentId;

    let parent: string;
    if (type === 'post') {
      parent = 'posts';
    } else if (type === 'comment') {
      parent = 'comments';
    } else {
      throw new Error(`This parent does not exists ${type}`);
    }

    const parentRef = admin.firestore().doc(`${parent}/${parentId}`);
    await parentRef.update({ 'likes': admin.firestore.FieldValue.increment(1) });
  });

// noinspection JSUnusedGlobalSymbols
export const onDeleteLike = functions
  .firestore
  .document('likes/{likeId}')
  .onDelete(async (snapshot) => {
    const type = snapshot.data()!.type;
    const parentId = snapshot.data()!.parentId;

    let parent: string;
    if (type === 'post') {
      parent = 'posts';
    } else if (type === 'comment') {
      parent = 'comments';
    } else {
      throw new Error(`This parent does not exists ${type}`);
    }

    const parentRef = admin.firestore().doc(`${parent}/${parentId}`);
    await parentRef.update({ 'likes': admin.firestore.FieldValue.increment(-1) });
  });

// noinspection JSUnusedGlobalSymbols
export const onCreateUser = functions
  .firestore
  .document(`users/{uid}`)
  .onWrite(async (change, context) => {
    const uid: string = context.params.uid;

    if (!change.after.exists) {
      await index.deleteObject(uid);
    } else {
      const data = change.after.data()!;
      await index.saveObject({ 'objectID': uid, ...data });
    }
  });

// noinspection JSUnusedGlobalSymbols
export const checkUsername = functions
  .https
  .onCall(async (data: any, context) => {
    if (!data.username) {
      throw new functions.https.HttpsError("invalid-argument", "You need to provide a username");
    }

    const username: string = data.username;
    const snapshot = await admin.firestore()
      .collection('users')
      .where('username', '==', username)
      .get();

    return snapshot.docs.length === 0 ? username : null;
  });