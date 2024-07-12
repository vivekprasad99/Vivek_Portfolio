import 'package:flutter/material.dart';
import 'package:vivek_portfolio/utils/common_function.dart';
import 'package:vivek_portfolio/utils/constants.dart';

class CompanyJobInfo extends StatelessWidget {
  final int? selectedIndex;
  const CompanyJobInfo({required this.selectedIndex,super.key});

  @override
  Widget build(BuildContext context) {
    if (selectedIndex == 0) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Senior Software Engineer', 'IBM', 'https://www.ibm.com/in-en', context),
          const SizedBox(
            height: 8,
          ),
          _period('March 2024', 'Present', context),
          const SizedBox(
            height: 16,
          ),
          _jobRole(
              'UXE Engineering',
              context),
          const SizedBox(
            height: 16,
          ),
        ],
      );
    }
    if (selectedIndex == 1) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// todo generic
          _position('Software Developer Engineer I', 'Awign', 'https://www.awign.com/', context),
          const SizedBox(
            height: 8,
          ),
          _period('September 2022', 'February 2024', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'As a Mobile Developer , I was mainly working on Awign App which is used by 500k+ gig workers and Gig App.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'On Android, iOS App, I developed and released the Awign app, which is utilised by Gig workers to assist on gig related works.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole('I worked with multi-disciplinary teams of engineers, designers, and product managers on a daily basis.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'The team had several discussions and demos to learn more about flutter and make our existing apps more scalable.',
              context),
        ],
      );
    } else if (selectedIndex == 2) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Software Development Engineer', 'Fraazo', 'https://fraazo-clone-web-17.netlify.app/', context),
          SizedBox(
            height: 8,
          ),
          _period('Jan 2022', 'September 2022', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'I developed the Rider App of Fraazo from the bottom up utilising Agile processes with the help of a Tech Lead and a Designer.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole("In Flutter, I built and constructed a Asset Management features that is used by rider at Fraazo's many hubs.",
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole("Responsible for the design, development, testing, and upkeep of Fraazo's Rider delivery app.", context),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Junior Software developer', 'Hridayam Soft Solution', 'https://www.hridayamsoft.com/', context),
          SizedBox(
            height: 8,
          ),
          _period('November 2020', 'Dec 2021', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'I have worked as a backend Developer and my main project was Document Management System.which i have made from Scratch.', context),
          SizedBox(
            height: 12,
          ),
          _jobRole('The purpose of making this system was to recieve,track,manage and store documents and reduce paperwork.', context),
        ],
      );
    }
  }

  Widget _position(String position, String company, String link, BuildContext context) {
    return Row(
      children: [
        Text(
          position,
          style: TextStyle(
            fontSize: 20,
            color: Constants.white,
            fontFamily: 'FiraSans',
            fontWeight: CommonFunction.isApp(context) ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        CommonFunction.isApp(context)
            ? Container()
            : InkWell(
                onTap: () {
                  CommonFunction.openFromUrl(link);
                },
                child: Text(
                  ' @$company',
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w400,
                    color: Constants.green,
                  ),
                ),
              ),
      ],
    );
  }

  Widget _period(String start, String end, BuildContext context) {
    return Text(
      '$start - $end',
      style: TextStyle(
        fontSize: CommonFunction.isApp(context) ? 18 : 16,
        color: Constants.slate,
        fontFamily: 'FiraSans',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _jobRole(String value, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2),
          child: Icon(
            Icons.play_arrow,
            size: CommonFunction.isApp(context) ? 20 : 16,
            color: Constants.green,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Flexible(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Constants.slate,
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}