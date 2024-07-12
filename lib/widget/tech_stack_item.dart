import 'package:flutter/material.dart';
import 'package:vivek_portfolio/utils/common_function.dart';
import 'package:vivek_portfolio/utils/constants.dart';


class TechStackItem extends StatelessWidget {
  final String? text;

  const TechStackItem({super.key, 
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.play_arrow,
          size: CommonFunction.isApp(context) ? 20 : 14,
          color: Constants.green,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          text!,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: CommonFunction.isApp(context) ? 18 : 16,
            color: Constants.slate,
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}