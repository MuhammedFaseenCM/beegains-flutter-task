import 'dart:developer';

import 'package:beegains/controller/login_provider.dart';
import 'package:beegains/view/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: const BoxDecoration(
          color: Colors.tealAccent,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextFormField(
        controller: Provider.of<LoginProvider>(context).username,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter a valid user name';
          }
          return null;
        },
        onChanged: (value) => log(value.toString()),
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.phone),
            border: InputBorder.none,
            hintText: "User name"),
      ),
    );
  }
}

class PassWordField extends StatelessWidget {
  const PassWordField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: const BoxDecoration(
          color: Colors.tealAccent,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextFormField(
          obscureText: true,
          controller: Provider.of<LoginProvider>(context).password,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock_outline_rounded),
            border: InputBorder.none,
            hintText: "Password",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility,
                color: kBlackColor,
              ),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter a valid password';
            }
            return null;
          }),
    );
  }
}
