import 'package:beegains/controller/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogoutButton extends StatelessWidget {
  
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loginState = context.watch<LoginProvider>();
    return InkWell(
      onTap: () async {
        Navigator.pushReplacementNamed(context, '/login');
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
              : const Text("Logout"),
        ),
      ),
    );
  }
}
