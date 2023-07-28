import 'package:flutter/material.dart';


class HashTagContainer extends StatelessWidget {
  

  final String data;
  const HashTagContainer(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffD9D9D9),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mq.width*0.025,
          vertical: mq.height*0.015
        ),
        child: Center(
          child: Text(data),
        ),
      ),
    );
  }
}