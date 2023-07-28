import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire/style/text_style.dart';

class LikeCommentShareRow extends StatelessWidget {
  const LikeCommentShareRow({super.key});


  


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/heart.svg'),
            Text('5',style: kLightTextStyle,),
          ],
        ),
        const SizedBox(width: 5),
        Row(
          children: [
            SvgPicture.asset('assets/chat.svg'),
            Text('5',style: kLightTextStyle,),
          ],
        ),
        const SizedBox(width: 5),
        SvgPicture.asset('assets/bookmark.svg'),
        SvgPicture.asset('assets/more.svg'),
      ],
    );
  }
}