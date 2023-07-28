import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire/widget/slider_screen.dart';
import 'package:hyperhire/style/text_style.dart';
import 'package:hyperhire/widget/chat.dart';
import 'package:hyperhire/widget/comment.dart';
import 'package:hyperhire/widget/expert_row.dart';
import 'package:hyperhire/widget/hashtag.dart';
import 'package:hyperhire/widget/likecommentshare_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset('assets/arrow.svg'),
        ),
        //leading:IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios),color: Colors.black,),
        title: Center(
            child: Text(
          '자유톡',
          style: kTextStyle.copyWith(fontSize: 16),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(child: SvgPicture.asset('assets/bell.svg')),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: mq.width * 0.05, vertical: mq.height * 0.01
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/c.png'),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ExpertRow('안녕 나 응애 '),
                        Text(
                          '165cm . 53kg',
                          style: kLightTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff01B99F),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mq.width * 0.06,
                        vertical: mq.height * 0.012),
                    child: Center(
                      child: Text(
                        '팔로우',
                        style: kMainTextStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
                      ),
                      SizedBox(
              height: mq.height * 0.02,
                      ),
                      Text(
              '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
              style: kTextStyle,
                      ),
                      SizedBox(
              height: mq.height * 0.02,
                      ),
                      Text(
              '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어? 후기 올라오는거 보면 로우라이즈?',
              style: kMainTextStyle,
                      ),
                      SizedBox(
              height: mq.height * 0.02,
                      ),
                      Text(
              '그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아???',
              style: kMainTextStyle,
                      ),
                      SizedBox(
              height: mq.height * 0.02,
                      ),
                      Text(
              '올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
              style: kMainTextStyle,
                      ),
                      SizedBox(
              height: mq.height * 0.02,
                      ),
                      const Row(
              children: [
                Wrap(
                  spacing: 10,
                  children: [
                    HashTagContainer('#2023'),
                    HashTagContainer('#TODAYISMONDAY'),
                    HashTagContainer('#TOP'),
                    HashTagContainer('#POPS!'),
                  ],
                ),
              ],
                      ),
                      SizedBox(
              height: mq.height * 0.02,
                      ),
                      const Row(
              children: [
                Wrap(
                  spacing: 10,
                  children: [
                    HashTagContainer('#ROW'),
                    HashTagContainer('#WOW'),
                  ],
                ),
              ],
                      ),
                      SizedBox(
              height: mq.height * 0.02,
                      ),
                      const SliderScreen(),
                      SizedBox(
              height: mq.height * 0.01,
                      ),
                      const LikeCommentShareRow(),
                      SizedBox(
              height: mq.height * 0.005,
                      ),
                    ],
              ),
            ),
            const Divider(),
            const Comment(
          '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니꼭 봐주세용~!'),
          const Divider(),
            const Chat()
          ]),
      ),
    );
  }
}
