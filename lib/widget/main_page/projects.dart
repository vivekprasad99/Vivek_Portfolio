import 'package:flutter/material.dart';
import 'package:vivek_portfolio/widget/project_showcase.dart';
import 'package:vivek_portfolio/widget/sub_header.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SubHeader(
          number: '03.',
          heading: 'Some Things I’ve Built',
        ),
        SizedBox(
          height: 32,
        ),
    
        /// todo change this
        /// todo generic
        
        Expanded(
          child: ProjectShowcase(
            title: 'Awign',
            subTitle:
                'Awign app provides temporary jobs to you.',
                playStoreUrl: "https://play.google.com/store/apps/details?id=com.awign.intern&hl=en_IN",
          ),
        ),
      ],
    );
  }
}