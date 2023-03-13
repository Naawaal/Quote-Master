import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxString userName = "Loading".obs;

  RxString documentId = "".obs;

  void getUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      String userUid = user.uid;
      DocumentReference userDocRef =
          FirebaseFirestore.instance.collection('users').doc(userUid);
      DocumentSnapshot userDocSnapshot = await userDocRef.get();
      if (userDocSnapshot.exists) {
        String userDocId = userDocSnapshot.id;
        print('User document ID: $userDocId');
      } else {
        print('User document does not exist!');
      }
    } else {
      print('No user is currently signed in.');
    }
  }
}
