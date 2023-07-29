import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50.0,
          child: Image.network(
              "https://icons-for-free.com/iconfiles/png/512/avatar+person+profile+user+icon-1320166578424287581.png"),
        )
      ],
    );
  }
}
