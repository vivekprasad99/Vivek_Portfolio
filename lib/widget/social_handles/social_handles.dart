import 'package:flutter/material.dart';
import 'package:vivek_portfolio/utils/common_function.dart';
import 'package:vivek_portfolio/utils/constants.dart';
import 'package:vivek_portfolio/widget/social_handles/social_handle_item.dart';

class SocialHandles extends StatefulWidget {
  const SocialHandles({super.key});

  @override
  State<SocialHandles> createState() => _SocialHandlesState();
}

class _SocialHandlesState extends State<SocialHandles> {
  @override
  Widget build(BuildContext context) {
    return CommonFunction.isApp(context)
        ? Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _socialList(),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _socialList(),
          );
  }

  List<Widget> _socialList() {
    return [
      const SocialHandleItem(
        assetName: 'github',
        socialHandleUrl: Constants.githubUrl,
      ),
      const SocialHandleItem(
        assetName: 'medium',
        socialHandleUrl: Constants.mediumUrl,
      ),
      const SocialHandleItem(
        assetName: 'stackoverflow',
        socialHandleUrl: Constants.stackoverflowUrl,
      ),
      const SocialHandleItem(
        assetName: 'linkedin',
        socialHandleUrl: Constants.linkedinUrl,
      ),
      // const SocialHandleItem(
      //   assetName: 'twitter',
      //   socialHandleUrl: Constants.twitterUrl,
      // ),
      // const SocialHandleItem(
      //   assetName: 'instagram',
      //   socialHandleUrl: Constants.instagramUrl,
      // ),
      // const SocialHandleItem(
      //   assetName: 'facebook',
      //   socialHandleUrl: Constants.facebookUrl,
      // ),
      CommonFunction.isApp(context)
          ? InkWell(
              onTap: () {
                CommonFunction.openMail();
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 22),
                child: Icon(
                  Icons.email_outlined,
                  size: 24,
                  color: Constants.lightestSlate,
                ),
              ),
            )
          : Container(),
    ];
  }
}