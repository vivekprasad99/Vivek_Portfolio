import 'package:flutter/material.dart';
import 'package:vivek_portfolio/utils/common_function.dart';
import 'package:vivek_portfolio/utils/constants.dart';

class CompanyTile extends StatelessWidget {
  final String val;
  final bool selected;
  const CompanyTile({required this.val,
    this.selected = false,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? Constants.green.withOpacity(.05) : Colors.transparent,
        borderRadius: BorderRadius.circular(
          CommonFunction.isApp(context) ? 12 : 6,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          val,
          style: TextStyle(
            fontSize: CommonFunction.isApp(context) ? 18 : 16,
            color: selected ? Constants.green : Constants.slate,
            fontFamily: 'FiraSans',
            fontWeight: CommonFunction.isApp(context) ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}