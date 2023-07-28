import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/text_style.dart';

class ExpertRow extends StatelessWidget {

final String name;
const ExpertRow(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: kTextStyle,
        ),
        SvgPicture.asset('assets/EXPERT_ICON.svg'),
        Text(
          '1일전',
          style: kLightTextStyle.copyWith(fontSize: 10),
        )
      ],
    );
  }
}
