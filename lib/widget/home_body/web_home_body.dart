import 'package:flutter/material.dart';
import 'package:vivek_portfolio/utils/constants.dart';
import 'package:vivek_portfolio/widget/bottom_line_widget.dart';
import 'package:vivek_portfolio/widget/email_widget.dart';
import 'package:vivek_portfolio/widget/main_page/about_me_widget.dart';
import 'package:vivek_portfolio/widget/main_page/experience.dart';
import 'package:vivek_portfolio/widget/main_page/introduction.dart';
import 'package:vivek_portfolio/widget/main_page/projects.dart';
import 'package:vivek_portfolio/widget/other_noteworthy_projects/other_projects.dart';
import 'package:vivek_portfolio/widget/project_showcase.dart';
import 'package:vivek_portfolio/widget/social_handles/social_handles.dart';

class WebHomeBody extends StatelessWidget {
  final PageController? pageController;
  const WebHomeBody({this.pageController,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: RawScrollbar(
        controller: pageController,
        thickness: 8,
        interactive: true,
        thumbColor: Constants.green,
        radius: const Radius.circular(8),
        child: Padding(padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SocialHandles(),
                  SizedBox(
                    height: 16,
                  ),
                  BottomLineWidget(),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 128),
                  child: PageView(
                    scrollDirection: Axis.vertical,
                    controller: pageController,
                    children: [
                      const Introduction(),
                      AboutMeWidget(),
                      const Experience(),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 48),
                        child: Projects(),
                      ),
    
                      /// todo pass this through constants
                      _showcaseWidget(
                        'Taskforce',
                        'Taskforce gives a platform to Gig Workers to do HR related work.',
                        appUrl: 'https://play.google.com/store/apps/details?id=com.awign.hrms&hl=en_IN',
                      ),
                      // _showcaseWidget(
                      //   'Intellect',
                      //   'Intellect provides you platform to prepare for UPSC.',
                      // ),
                      // _showcaseWidget(
                      //   'Intellect Dashboard',
                      //   'Dashboard to mange your courses, videos, tests and materials for Intellect app.',
                      // ),
                      // _showcaseWidget(
                      //   'Batuni',
                      //   'Batuni connects you to other users in topic based anonymous audio chats.',
                      //   appUrl: 'https://play.google.com/store/apps/details?id=app.batuni',
                      // ),
                      // _showcaseWidget(
                      //   'Duit',
                      //   'Duit provides you to share contact information with anyone to expand your reach.',
                      // ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 48),
                        child: OtherProjects(),
                      ),
                    ],
                  ),
                ),
              ),
              const EmailWidget(),
            ],
          ),
          )),
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