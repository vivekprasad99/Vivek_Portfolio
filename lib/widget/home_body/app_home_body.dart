import 'package:flutter/material.dart';
import 'package:vivek_portfolio/utils/common_function.dart';
import 'package:vivek_portfolio/widget/main_page/about_me_widget.dart';
import 'package:vivek_portfolio/widget/main_page/experience.dart';
import 'package:vivek_portfolio/widget/main_page/introduction.dart';
import 'package:vivek_portfolio/widget/main_page/projects.dart';
import 'package:vivek_portfolio/widget/other_noteworthy_projects/other_projects.dart';
import 'package:vivek_portfolio/widget/project_showcase.dart';

class AppHomeBody extends StatelessWidget {
  final PageController? pageController;
  const AppHomeBody({super.key,this.pageController,});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: pageController,
      children: [
         const Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 4,
          ),
          child: Introduction(),
        ),
        // SizedBox(height: 12,),
         Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: AboutMeWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Experience(),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
            top: 48,
            bottom: 48,
          ),
          child: const Projects(),
        ),
        /// todo generic
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Taskforce',
            'Taskforce gives a platform to Gig Workers to do HR related work.',
            appUrl: 'https://play.google.com/store/apps/details?id=com.awign.hrms&hl=en_IN',
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(
                top: 48,
                bottom: 48,
              ) +
              (CommonFunction.isApp(context) ? EdgeInsets.symmetric(horizontal: 16) : EdgeInsets.zero),
          child: const OtherProjects(),
        ),
      ],
    );
  }

  Widget _showcaseWidget(
    String title,
    String subtitle, {
    String? appUrl,
    String? github,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: ProjectShowcase(
        title: title,
        subTitle: subtitle,
        playStoreUrl: appUrl,
        githubUrl: github,
      ),
    );
  }
}