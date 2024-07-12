import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vivek_portfolio/utils/common_function.dart';
import 'package:vivek_portfolio/utils/constants.dart';
import 'package:vivek_portfolio/widget/other_noteworthy_projects/other_project_item.dart';

class OtherProjects extends StatefulWidget {
  const OtherProjects({super.key});

  @override
  State<OtherProjects> createState() => _OtherProjectsState();
}

class _OtherProjectsState extends State<OtherProjects> {
List<String>? titleOtherProject;

  List<String>? subTitleOtherProject;

  List<String>? link;

  @override
  void initState() {
    super.initState();

    /// todo generic
    titleOtherProject = [
      'Food Recipie App',
      'Training Diet App',
      'Facebook',
      'Blog App',
    ];
    subTitleOtherProject = [
      'Food Recipie app calling api of recipie.org..',
      'Its all about dieting.',
      'It is clone of Facebook',
      'It is a blog in which frontend is made up in Flutter and backend in php',
    ];
    link = [
      'https://github.com/vivekprasad99/Food-Recipe-App',
      'https://github.com/vivekprasad99/training_diet_app',
      'https://github.com/vivekprasad99/facebook_clone',
      'https://github.com/vivekprasad99/flutter_blog_app',
    ];
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Other Noteworthy Projects',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Constants.lightestSlate,
            fontFamily: 'FiraSans',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    OtherNoteworthyProjectItem(
                      title: titleOtherProject![0],
                      description: subTitleOtherProject![0],
                      url: link![0],
                    ),
                    OtherNoteworthyProjectItem(
                      title: titleOtherProject![1],
                      description: subTitleOtherProject![1],
                      url: link![1],
                    ),
                    OtherNoteworthyProjectItem(
                      title: titleOtherProject![2],
                      description: subTitleOtherProject![2],
                      url: link![2],
                    ),
                    OtherNoteworthyProjectItem(
                      title: titleOtherProject![3],
                      description: subTitleOtherProject![3],
                      url: link![3],
                    ),
                  ],
                ),
              ),
            ],
          )
          ),
          CommonFunction.isApp(context)
            ? Padding(
                padding: const EdgeInsets.only(top: 16),
                child: InkWell(
                  onTap: () {
                    CommonFunction.openFromUrl('https://brittanychiang.com/');
                  },
                  child: const Card(
                    color: Constants.slate,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Shout-out to Brittany Chiang',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Constants.white,
                                fontFamily: 'FiraSans',
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.open_in_new,
                              size: 20,
                              color: Constants.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}