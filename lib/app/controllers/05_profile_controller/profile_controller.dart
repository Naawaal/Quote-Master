import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxString userName = "Loading".obs;

  void getUserData() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      final userDocument = await FirebaseFirestore.instance
          .collection("users")
          .doc(user.uid)
          .get();
      userName.value = userDocument.get("name");
    } else {
      userName.value = "No user found in our server";
    }
  }
}
