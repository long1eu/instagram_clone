import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';

admin.initializeApp();

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

// Update like count on like parent
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
