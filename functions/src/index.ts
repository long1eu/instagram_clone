import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';

admin.initializeApp();

// noinspection JSUnusedGlobalSymbols
export const onCreatePost = functions
  .firestore
  .document('likes/{likeId}')
  .onCreate(async (snapshot) => {
    let parent: string;
    if (snapshot.data()!.type === 'post') {
      parent = 'posts';
    } else if (snapshot.data()!.type === 'comment') {
      parent = 'comments';
    } else {
      throw new Error('This parent does not exists $type');
    }

    const parentRef = admin.firestore().doc(`${parent}/${snapshot.data()!.parentId}`);
    await parentRef.update({ 'likes': admin.firestore.FieldValue.increment(1) });
  });