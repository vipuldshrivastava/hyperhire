import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire/style/text_style.dart';


class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: mq.height*0.05,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                      },
                      child: SvgPicture.asset('assets/image.svg'),
                    ),
                    SizedBox(width: mq.width*0.02,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '댓글을 남겨주세요.',
                          hintStyle: kLightTextStyle,
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    Text('등록',style: kLightTextStyle,),
                  ],
                  
                ),
              ),
            ),
          ],
        ),
    );
}
}