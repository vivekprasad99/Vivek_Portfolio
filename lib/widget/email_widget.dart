import 'package:flutter/material.dart';
import 'package:vivek_portfolio/utils/common_function.dart';
import 'package:vivek_portfolio/utils/constants.dart';
import 'bottom_line_widget.dart';

class EmailWidget extends StatefulWidget {
  const EmailWidget({super.key});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  bool? emailHover;
  double? animatedPaddingValueBottom;
  double? animatedPaddingValueTop;

  @override
  void initState() {
    super.initState();
    emailHover = false;
    animatedPaddingValueBottom = 0;
    animatedPaddingValueTop = 24;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: InkWell(
            onTap: () {
              CommonFunction.openMail();
            },
            onHover: (val) {
              if (val) {
                setState(() {
                  emailHover = true;
                  animatedPaddingValueTop = 18;
                  animatedPaddingValueBottom = 6;
                });
              } else {
                setState(() {
                  emailHover = false;
                  animatedPaddingValueTop = 24;
                  animatedPaddingValueBottom = 0;
                });
              }
            },
            child: AnimatedPadding(
              curve: Curves.easeIn,
              padding: EdgeInsets.only(
                left: animatedPaddingValueTop!,
                right: animatedPaddingValueBottom!,
              ),
              duration: Duration(milliseconds: 100),
              child: Text(
                Constants.email,

                /// todo style from TextStyle
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FiraSans',
                  fontWeight: FontWeight.w400,
                  color: emailHover! ? Constants.green : Constants.slate,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        !CommonFunction.isApp(context)
            ? InkWell(
                onTap: () {
                  CommonFunction.openFromUrl('https://brittanychiang.com/');
                },
                child: const Tooltip(
                  message: 'Shout-out to Brittany Chiang',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Constants.green,
                    fontFamily: 'FiraSans',
                  ),
                  child: Icon(
                    Icons.whatshot,
                    size: 20,
                    color: Constants.lightestSlate,
                  ),
                ),
              )
            : Container(),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 8,
          ),
          child: BottomLineWidget(),
        ),
      ],
    );
  }
}