import 'package:flutter/material.dart';
import 'package:vivek_portfolio/utils/constants.dart';

class WebAppBar extends StatelessWidget {
  final Function(int)? pageCallback;
  const WebAppBar({this.pageCallback,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.navy,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                pageCallback!(0);
              },

              /// todo generic
              child: Text(
                'Vivek.'.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 32,
                  color: Constants.green,
                  fontFamily: 'FiraSans',
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    pageCallback!(1);
                  },
                  child: _appBarItem(
                    '1',
                    'About',
                    Icons.info_outline,
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                InkWell(
                  onTap: () {
                    pageCallback!(2);
                  },
                  child: _appBarItem(
                    '2',
                    'Experience',
                    Icons.work_outline,
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                InkWell(
                  onTap: () {
                    pageCallback!(3);
                  },
                  child: _appBarItem(
                    '3',
                    'Work',
                    Icons.handyman_outlined,
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
              ],
            )
          ],
        ),
        ),
    );
  }

  Widget _appBarItem(String number, String item, IconData iconData) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 18,
          color: Constants.green,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          item,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}