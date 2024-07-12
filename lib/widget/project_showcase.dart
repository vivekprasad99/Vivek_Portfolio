import 'package:flutter/material.dart';
import 'package:vivek_portfolio/utils/common_function.dart';
import 'package:vivek_portfolio/utils/constants.dart';

class ProjectShowcase extends StatefulWidget {
  final String? title;
  final String? subTitle;
  final String? githubUrl;
  final String? playStoreUrl;
  const ProjectShowcase({super.key, this.title, this.subTitle, this.githubUrl, this.playStoreUrl});

  @override
  State<ProjectShowcase> createState() => _ProjectShowcaseState();
}

class _ProjectShowcaseState extends State<ProjectShowcase> {
  List<Widget>? showcaseList;
  String? playStore;

  @override
  void initState() {
    /// todo generic
    playStore = 'playstore_dark';
    if (widget.title == 'Taskforce') {
      showcaseList = [
        placeholder('Taskforce_1'),
        const SizedBox(width: 10,),
        placeholder('Taskforce_2'),
        const SizedBox(width: 10,),
        placeholder('Taskforce_3'),
        const SizedBox(width: 10,),
        placeholder('Taskforce_4'),
      ];
    } else if (widget.title == 'Awign') {
      showcaseList = [
        placeholder('Awign_1'),
       const SizedBox(width: 10,),
        placeholder('Awign_2'),
       const SizedBox(width: 10,),
        placeholder('Awign_3'),
        const SizedBox(width: 10,),
        placeholder('Awign_5'),
      ];
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                widget.title!.toUpperCase(),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Constants.lightestSlate,
                  fontFamily: 'FiraSans',
                ),
              ),
              SizedBox(
                width: widget.playStoreUrl != null ? 16 : 0,
              ),
          widget.playStoreUrl != null
                  ? InkWell(
                      onTap: () {
                        CommonFunction.openFromUrl(widget.playStoreUrl!);
                      },
                      child: Card(
                        shadowColor: Constants.green,
                        color: Constants.navy,
                        elevation: 5,
                        child: Image.asset(
                          'asset/google_play.png',
                          fit: BoxFit.fill,
                          width: 130,
                          height: 36,
                        ),
                      ),
                    )
                  : const SizedBox(),
          widget.githubUrl != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: InkWell(
                        onTap: () {
                          CommonFunction.openFromUrl(widget.githubUrl!);
                        },
                        onHover: (value) {
                          if (value) {
                            setState(() {
                              playStore = 'github_light';
                            });
                          } else {
                            setState(() {
                              playStore = 'github_dark';
                            });
                          }
                        },
                        child: Image.asset(
                          'asset/$playStore.png',
                          width: 16,
                          height: 16,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            widget.subTitle!,
            style: TextStyle(
              fontSize: CommonFunction.isApp(context) ? 18 : 16,
              color: Constants.green,
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: showcaseList!,
              ),
            ),
          )
        ],
    );
  }

  Widget placeholder(String image) {
    return Container(
      height: 150,
      width: 150,
      padding: EdgeInsets.symmetric(
        horizontal: widget.title == 'Intellect Dashboard' ? 16 : 0,
      ),
      child: Image.asset(
        'asset/$image.png',
        fit: BoxFit.fill,
      ),
    );
  }
}