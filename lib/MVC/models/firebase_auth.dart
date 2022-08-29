import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentication {

  static Future<Map<String, dynamic>> createNewUser(
      String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user != null) {
        return {
          "Status": true,
        };
      }
      return {"Status": false, "Message": 'An error occured'};
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return {
          "Status": false,
          "Message": 'The password provided is too weak.'
        };
      } else if (e.code == 'email-already-in-use') {
        return {"Status": false, "Message": 'Email is Alreday in use'};
      }
      return {"Status": false, "Message": 'An error occured'};
    } on SocketException catch (_) {
      return {"Status": false, "Message": 'No internet connection'};
    } catch (e) {
      return {"Status": false, "Message": 'An error occured'};
    }
  }

  Future loginUser(
      {required String userEmail, required String userPassword}) async {
    try {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: userEmail, password: userPassword)
          .then((value) {
        print(value);
      });
    } on FirebaseAuthException catch (e) {
      print(e.code);
    } on SocketException catch (_) {}
  }
}
