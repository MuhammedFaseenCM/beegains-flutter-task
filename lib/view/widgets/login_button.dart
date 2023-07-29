// ignore_for_file: use_build_context_synchronously

import 'package:beegains/controller/fetch_enquiry_list.dart';
import 'package:beegains/controller/login.dart';
import 'package:beegains/controller/login_provider.dart';
import 'package:beegains/model/enquirylist_model.dart';
import 'package:beegains/model/login_model.dart';
import 'package:beegains/view/enquirylist_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  final formKey;
  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final loginState = context.watch<LoginProvider>();
    return InkWell(
      onTap: () async {
        if (!formKey.currentState.validate()) {
          return;
        }
        else{
           formKey.currentState.save();
        }
        loginState.showLoadingState(true);
        final loginProvider = context.read<LoginProvider>();

        Beegains result = await login(
            username: loginProvider.username.text,
            password: loginProvider.password.text);
        

        if (result.success!) {
      EnquiryList enquiryList =     await fetchEnquiryList(result.data!.token.toString());
      loginState.showLoadingState(false);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EnquiryListScreen(enquiryList: enquiryList,beegains: result),));
        }
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(blurRadius: 10, color: Colors.tealAccent, spreadRadius: 2)
          ],
          color: Colors.lightGreenAccent..withOpacity(.2),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: loginState.loadingState
              ? const CircularProgressIndicator()
              : const Text("Login"),
        ),
      ),
    );
  }
}
