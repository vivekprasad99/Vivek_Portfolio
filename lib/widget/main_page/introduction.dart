import 'package:flutter/material.dart';
import 'package:vivek_portfolio/utils/common_function.dart';
import 'package:vivek_portfolio/utils/constants.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hi, my name is',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: CommonFunction.isApp(context) ? 24 : 16,
            color: Constants.green,
            fontFamily: 'FiraSans',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          'Vivek Prasad.',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: CommonFunction.isApp(context) ? 48 : 64,
            color: Constants.white,
            fontFamily: 'FiraSans',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'I build mobile apps.',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'FiraSans',
            fontSize: CommonFunction.isApp(context) ? 48 : 64,
            color: Constants.lightSlate,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        const Text(
          "I am a Software Developer from India that specialises in developing mobile apps. \nI'm fluttering right now!",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: 'FiraSans',
            color: Constants.slate,
          ),
        ),
      ],
    );
  }
}