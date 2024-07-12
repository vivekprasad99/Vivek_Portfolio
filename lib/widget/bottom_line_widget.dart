import 'package:flutter/widgets.dart';
import 'package:vivek_portfolio/utils/constants.dart';

class BottomLineWidget extends StatelessWidget {
  const BottomLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 100,
        width: 1,
        color: Constants.white,
      ),
    );
  }
}