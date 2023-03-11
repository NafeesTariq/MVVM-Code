import 'package:flutter/material.dart';
import 'package:mvvm_project/utils/routes/rotes_named.dart';
import 'package:mvvm_project/views/Screans/BuyPointScrean.dart';

import '../../resources/components/AppBar.dart';

class EarnPoints extends StatefulWidget {
  const EarnPoints({super.key});

  @override
  State<EarnPoints> createState() => _EarnPointsState();
}

class _EarnPointsState extends State<EarnPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 140,
                        width: 300,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(0, 0),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                height: 60,
                                child: Image.asset("assets/images/cart.png")),
                            SizedBox(
                              height: 13,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BuyPointsScrean()),
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 230,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "Buy Points",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(height: 0),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 140,
                        width: 300,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(0, 0),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                height: 60,
                                child: Image.asset("assets/images/crown.png")),
                            SizedBox(
                              height: 13,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RoutesName.BuyPoints);
                              },
                              child: Container(
                                height: 40,
                                width: 230,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "Buy Points",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 140,
                        width: 300,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(0, 0),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                height: 60,
                                child:
                                    Image.asset("assets/images/feedback.png")),
                            SizedBox(
                              height: 13,
                            ),
                            Container(
                              height: 40,
                              width: 230,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "Buy Points",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                          ],
                        )),
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
