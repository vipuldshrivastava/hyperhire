import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire/style/text_style.dart';
import 'package:hyperhire/widget/expert_row.dart';

class Comment extends StatelessWidget {
  final String data;
  const Comment(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: mq.width * 0.05, vertical: mq.height * 0.01
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/c.png'),
                  const SizedBox(width: 10),
                  ExpertRow('안녕 나 응애 '),
                ],
              ),
              SvgPicture.asset('assets/more.svg'),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: mq.width*0.1),
            child: Column(
              children: [
                Text(
                  data,
                  style: kMainTextStyle,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/heart.svg'),
                      Text(
                        '5',
                        style: kLightTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/chat.svg'),
                      Text(
                        '5',
                        style: kLightTextStyle,
                      ),
                    ],
                  ),
                ]),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/p.png'),
                        const SizedBox(width: 5,),
                        ExpertRow('ㅇㅅㅇ'),
                      ],
                    ),
                    SvgPicture.asset('assets/more.svg'),
                  ],
                ),
                Column(
                  children: [
                    Text('오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',style: kMainTextStyle,),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(left:mq.width*0.075),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/heart.svg'),
                      Text('5',style: kLightTextStyle)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
