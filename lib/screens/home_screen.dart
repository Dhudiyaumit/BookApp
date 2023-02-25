import 'package:flutter/material.dart';
import 'package:new_book/consttants.dart';
import 'package:new_book/widget/reading_card_list.dart';
import 'package:new_book/widget/two_side_rounded_button.dart';

import '../widget/book_rating.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var favorite_border;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 30),
                    child: RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.displayMedium,
                          children: [
                            TextSpan(
                              text: "What are you \nreading",
                              style: TextStyle(
                                fontSize: 25.5,
                              ),
                            ),
                            TextSpan(
                              text: "\ttoday?",
                              style: TextStyle(
                                fontSize: 25.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        ReadingListCard(
                          image: "assets/image/book-1.png",
                          title: "Crushing & Influence",
                          auth: "Gray Venchuk",
                          rating: 4.9,
                        ),
                        ReadingListCard(
                          image: "assets/image/book-2.png",
                          title: "Top Ten Business Hacks",
                          auth: "Herman Joel",
                          rating: 4.6,
                        ),
                        ReadingListCard(
                          image: "assets/image/book-3.png",
                          title: "How to win Friends & Influence",
                          auth: "Herman Joel",
                          rating: 4.6,
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: [
                              TextSpan(
                                text: "Best of the",
                                style: TextStyle(fontSize: 25),
                              ),
                              TextSpan(
                                text: "\tday",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDay(),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: [
                              TextSpan(
                                text: "Continue",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              TextSpan(
                                text: "\treading...",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.84),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Crushing & Influence",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Gary Venchunk",
                                                style: TextStyle(
                                                  color: klightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  "Chapter 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: klightBlackColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/image/book-1.png",
                                          width: 55,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDay() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                left: 10,
                top: 24,
                right: 100,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    " New York Time Best For 11th March 2020",
                    style: TextStyle(
                      fontSize: 10,
                      color: klightBlackColor,
                    ),
                  ),
                  const SizedBox(height: 5,width: 10,),
                  const Text(
                    "How to win \nFriends & Influence",
                    style: TextStyle(fontSize: 17),
                  ),
                  const Text(
                    "Gary Vechuk",
                    style: TextStyle(color: klightBlackColor),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      BookRating(
                        score: 4.5,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "When The Earth was flat and Everyone wanted to win the \ngame of th best and people..,",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: klightBlackColor,fontSize: 12),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset("assets/image/book-3.png"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: 100,
              child: TowSideRoundedButton(
                text: "Read",
                press: () {},
                radious: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
