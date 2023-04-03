import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_whatsapp_fb/common/routes/routes.dart';
import 'package:flutter_whatsapp_fb/widgets/show_alert_dialog.dart';

final authRepositoryProvider = Provider(
  (ref) {
    return AuthRepository(
      auth: FirebaseAuth.instance,
      fireStore: FirebaseFirestore.instance,
    );
  },
);

class AuthRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore fireStore;

  const AuthRepository({
    required this.auth,
    required this.fireStore,
  });

  void verifySmsCode({
    required BuildContext context,
    required String smsCodeId,
    required String smsCode,
    required bool mounted,
  }) async {
    try {
      // ShowLoadingDialog(
      //   context: context,
      //   message: 'Verifiying code ... ',
      // );
      final credential = PhoneAuthProvider.credential(
        verificationId: smsCodeId,
        smsCode: smsCode,
      );
      await auth.signInWithCredential(credential);
      // UserModel? user = await getCurrentUserInfo();
      if (!mounted) return;
      Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.userInfo,
        (route) => false,
        // arguments: user?.profileImageUrl,
      );
    } on FirebaseAuthException catch (e) {
      // Navigator.pop(context);
      print("verifySmsCode-->err-> $e");
      ShowAlertDialog(context: context, message: e.toString());
    }
  }

  void sendSmsCode({
    required BuildContext context,
    required String phoneNumber,
  }) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          print("verificationFailed-->err-> $e");
          ShowAlertDialog(
            context: context,
            message: e.toString(),
          );
        },
        codeSent: (smsCodeId, resendSmsCodeId) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            Routes.verification,
            (route) => false,
            arguments: {
              'phoneNumber': phoneNumber,
              'smsCodeId': smsCodeId,
            },
          );
        },
        codeAutoRetrievalTimeout: (String smsCodeId) {},
      );
    } on FirebaseAuth catch (e) {
      print("FirebaseAuth-->err-> $e");
      ShowAlertDialog(
        context: context,
        message: e.toString(),
      );
    }
  }
}
