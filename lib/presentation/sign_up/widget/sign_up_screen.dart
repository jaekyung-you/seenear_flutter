import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/presentation/sign_up/controller/sign_up_controller.dart';

// GetPage에서 put했으니 GetView사용해도 될 듯 (이미 put되어야함, GetView는 find하는 wrapper)
class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
