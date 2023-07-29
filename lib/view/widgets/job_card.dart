import 'package:beegains/view/widgets/colors.dart';
import 'package:flutter/material.dart';

class JobCardContainer extends StatelessWidget {
  final String textName;
  const JobCardContainer({super.key, required this.textName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20.0,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.pink]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
        ),
        Container(
          height: 150.0,
          decoration: const BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0))),
          child: Center(
            child: Text(
              textName,
              style:
                  const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
