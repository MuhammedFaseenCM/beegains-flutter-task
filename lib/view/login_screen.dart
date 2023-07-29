import 'package:beegains/view/widgets/colors.dart';
import 'package:beegains/view/widgets/constants.dart';
import 'package:beegains/view/widgets/login_button.dart';
import 'package:beegains/view/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150.0,
                width: 180.0,
                child: Image.asset("assets/image/bee.png"),
              ),
              kHeight30,
              const UserNameField(),
              kHeight20,
              const PassWordField(),
              kHeight30,
              kHeight30,
              LoginButton(formKey: formKey),
            ],
          ),
        ),
      ),
    );
  }
}
