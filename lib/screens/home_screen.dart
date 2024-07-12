import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:vivek_portfolio/utils/common_function.dart';
import 'package:vivek_portfolio/utils/constants.dart';
import 'package:vivek_portfolio/widget/app_bar/mobile_app_bar.dart';
import 'package:vivek_portfolio/widget/app_bar/web_app_bar.dart';
import 'package:vivek_portfolio/widget/home_body/app_home_body.dart';
import 'package:vivek_portfolio/widget/home_body/web_home_body.dart';
import 'package:vivek_portfolio/widget/social_handles/social_handles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController? pageController;
  double? appBarHeight;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      keepPage: true,
      viewportFraction: 1,
    );
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Constants.navy,
          bottomNavigationBar: CommonFunction.isApp(context)
          ? const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(
                  kIsWeb ? 8.0 : 0,
                ),
                child: SocialHandles(),
              ),
            )
          : null,
          appBar: AppBar(
            backgroundColor: Constants.navy,
        shadowColor: Constants.green.withOpacity(0.5),
        elevation: 10,
        toolbarHeight: appBarHeight,
        title: CommonFunction.isApp(context) ? MobileAppBar(
                appBarClick: (isToggled, item) {
                  setState(() {
                    if (isToggled) {
                      appBarHeight = 160;
                    } else {
                      appBarHeight = null;
                    }
                  });
                  if (item != -1) {
                    pageController?.animateToPage(
                      item,
                      curve: Curves.easeIn,
                      duration: const Duration(milliseconds: 800),
                    );
                  }
                },
              ): WebAppBar(
                pageCallback: (pageNumber) {
                  pageController?.animateToPage(
                    pageNumber,
                    curve: Curves.easeIn,
                    duration: const Duration(milliseconds: 800),
                  );
                },
              ),
          ),
          body: Stack(
            children: [
              CircularParticle(
            key: UniqueKey(),
            awayRadius: 1,
            numberOfParticles: CommonFunction.isApp(context) ? 20 : 50,
            speedOfParticles: 2,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            onTapAnimation: true,
            particleColor: Constants.white,
            awayAnimationDuration: const Duration(milliseconds: 600),
            maxParticleSize: 2,
            isRandSize: true,
            isRandomColor: true,
            randColorList: const [Constants.green, Constants.white, Constants.lightestNavy],
            awayAnimationCurve: Curves.easeInOut,
            enableHover: false,
            connectDots: false,
          ),
          if (CommonFunction.isApp(context))
              AppHomeBody(
                pageController: pageController,
              )
            else
              WebHomeBody(
                pageController: pageController,
              ),
            ],
          ),
    );
  }
}