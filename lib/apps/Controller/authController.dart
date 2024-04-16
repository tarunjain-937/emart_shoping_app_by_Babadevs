import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../consts/firebase_const.dart';

class AuthController extends GetxController{

  var isLoding = false.obs;

  // login method
  Future<UserCredential?> loginMethod({email,password}) async{
    UserCredential? userCredential;

    try{
      await auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
    } on FirebaseAuthException catch(error){
      Get.snackbar(error.toString(), "");
    }
    return userCredential;
  }

  // Signup method
  Future<UserCredential?> signUpMethod({email,password}) async{
    UserCredential? userCredential;

    try{
      await auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
    } on FirebaseAuthException catch(error){
      Get.snackbar(error.toString(), "");
    }
    return userCredential;
  }

  //storing user auth credentials data method
  storeUserData({name,password,email})async{
    DocumentReference store = fireStore.collection(usersCollections).doc(currentUser!.uid);
    store.set({
      "userName" : name,
      "password" : password,
      "email" : email,
      "profileImgURL" : "",
      "userID" : currentUser!.uid,
    });
  }

  // signOut Method
  signOutMethod()async{
    try{
      await auth.signOut();
    }catch(error){
      Get.snackbar(error.toString(), "");
    }
  }
}













