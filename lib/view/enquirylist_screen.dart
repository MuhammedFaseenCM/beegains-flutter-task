import 'package:beegains/model/enquirylist_model.dart';
import 'package:beegains/model/login_model.dart';
import 'package:beegains/view/widgets/colors.dart';
import 'package:beegains/view/widgets/constants.dart';
import 'package:beegains/view/widgets/job_card.dart';
import 'package:beegains/view/widgets/logout_button.dart';
import 'package:beegains/view/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class EnquiryListScreen extends StatelessWidget {
  final EnquiryList enquiryList;
  final Beegains beegains;
  const EnquiryListScreen(
      {super.key, required this.enquiryList, required this.beegains});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBlackColor,
        appBar: AppBar(
          backgroundColor: kBlackColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ProfileAvatar(),
                kHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          beegains.data!.user!.username!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: kWhiteColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        kHeight10,
                        Text(
                          beegains.data!.user!.employee!.employeeName!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: kWhiteColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                        kHeight20
                      ],
                    ),
                  ],
                ),
                const JobCardContainer(textName: "Jobcards"),
                kHeight10,
                const JobCardContainer(textName: "Converted JobCards"),
                kHeight10,
                const JobCardContainer(textName: "Open/Non Converted Jobcards"),
                kHeight10,
                const JobCardContainer(textName: "FI Rejected Jobcards"),
                kHeight20,
                const LogoutButton()
              ],
            ),
          ),
        ));
  }
}
