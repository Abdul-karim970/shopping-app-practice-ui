import 'dart:math';

import 'package:flutter/material.dart';

import 'item_clipper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.07, right: screenWidth * 0.07),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: screenHeight * 0.08,
            ),
            Row(
              children: [
                const Icon(
                  Icons.menu,
                ),
                SizedBox(
                  width: screenWidth * 0.51,
                ),
                Container(
                  width: screenWidth * 0.12,
                  height: screenHeight * 0.05,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 235, 241, 255),
                      shape: BoxShape.circle),
                  child: const Icon(Icons.search, color: Colors.black54),
                ),
                SizedBox(
                  width: screenWidth * 0.04,
                ),
                Container(
                  width: screenWidth * 0.12,
                  height: screenHeight * 0.05,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 235, 241, 255),
                      shape: BoxShape.circle),
                  child: const Icon(Icons.notification_important_outlined,
                      color: Colors.black54),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            SizedBox(
                height: screenHeight * 0.15,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Positioned(
                      left: screenWidth * 0.05,
                      child: SizedBox(
                          height: screenHeight * 0.165,
                          width: screenWidth * 0.19,
                          child: const FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                '20\n23',
                                style: TextStyle(
                                    color: Colors.black12,
                                    fontWeight: FontWeight.w700),
                              ))),
                    ),
                    Positioned(
                      left: screenWidth * 0.055,
                      top: screenHeight * 0.035,
                      child: SizedBox(
                          width: screenWidth * 0.15,
                          child: const FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                'New',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ))),
                    ),
                    Positioned(
                      left: screenWidth * 0.055,
                      top: screenHeight * 0.07,
                      child: SizedBox(
                          width: screenWidth * 0.35,
                          child: const FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                'Collection',
                                style: TextStyle(
                                    color: Color.fromARGB(176, 0, 0, 0),
                                    fontWeight: FontWeight.normal),
                              ))),
                    )
                  ],
                )),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: screenHeight * 0.045,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 241, 255),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            'All',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Container(
                    height: screenHeight * 0.045,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 241, 255),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            'Nike',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Container(
                    height: screenHeight * 0.045,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 241, 255),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            'Adidas',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Container(
                    height: screenHeight * 0.045,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 241, 255),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            'Convers',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Container(
                    height: screenHeight * 0.045,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 241, 255),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            'Outfitters',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Container(
                    height: screenHeight * 0.045,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 241, 255),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            'Ideas',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Container(
                    height: screenHeight * 0.045,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 241, 255),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            'Others',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Container(
              width: screenWidth * 0.86,
              height: screenHeight * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 235, 241, 255),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.07, right: screenWidth * 0.07),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      SizedBox(
                        width: screenWidth * 0.86,
                        height: screenHeight * 0.585,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipPath(
                                  clipper: ItemClipper(),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.05,
                                        right: screenWidth * 0.05),
                                    alignment: Alignment.topCenter,
                                    width: screenWidth * 0.46,
                                    height: screenHeight * 0.35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: screenHeight * 0.03,
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.4,
                                          height: screenHeight * 0.1,
                                          child: const Image(
                                              image: NetworkImage(
                                                  'https://img.freepik.com/premium-photo/brown-home-slippers-isolated-white-background-clipping-path_410516-12490.jpg?w=740')),
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade500,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.01,
                                            ),
                                            const Text(
                                              '3.7',
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.02,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'OutFitters',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.003),
                                        SizedBox(
                                          height: screenHeight * 0.015,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'Slippers',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.015),
                                        SizedBox(
                                          height: screenHeight * 0.025,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                '\$ 75',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.1,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.06,
                                    ),
                                    Container(
                                      width: screenWidth * 0.13,
                                      height: screenHeight * 0.06,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 10,
                                                offset: Offset(3, 3),
                                                spreadRadius: 3)
                                          ],
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                              top: screenHeight * 0.23,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: screenHeight * 0.2,
                                      ),
                                      Container(
                                        width: screenWidth * 0.13,
                                        height: screenHeight * 0.06,
                                        decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 10,
                                                  offset: Offset(3, 3),
                                                  spreadRadius: 3)
                                            ],
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.1,
                                  ),
                                  ClipPath(
                                    clipper: ItemSecondClipper(),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 0.05,
                                          right: screenWidth * 0.05),
                                      width: screenWidth * 0.46,
                                      height: screenHeight * 0.35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: screenHeight * 0.08,
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.45,
                                            height: screenHeight * 0.15,
                                            child: const Image(
                                                image: NetworkImage(
                                                    'https://img.freepik.com/premium-vector/cartoon-shirt_119631-192.jpg?size=626&ext=jpg&uid=R53469926&ga=GA1.2.1259863635.1673981299&semt=ais')),
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow.shade500,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
                                              const Text(
                                                '3.4',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.02,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'Calypso Crx',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.003),
                                          SizedBox(
                                            height: screenHeight * 0.015,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'T Shirt',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.015),
                                          SizedBox(
                                            height: screenHeight * 0.025,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  '\$ 75',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      SizedBox(
                        width: screenWidth * 0.86,
                        height: screenHeight * 0.585,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipPath(
                                  clipper: ItemClipper(),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.05,
                                        right: screenWidth * 0.05),
                                    alignment: Alignment.topCenter,
                                    width: screenWidth * 0.46,
                                    height: screenHeight * 0.35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: screenHeight * 0.03,
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.45,
                                          height: screenHeight * 0.15,
                                          child: const Image(
                                              image: NetworkImage(
                                                  'https://img.freepik.com/premium-photo/pair-black-white-sneakers-with-word-gucci-front_771335-53377.jpg?w=740')),
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade500,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.01,
                                            ),
                                            const Text(
                                              '4.1',
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.02,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'Nike',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.003),
                                        SizedBox(
                                          height: screenHeight * 0.015,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'Sinkers',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.015),
                                        SizedBox(
                                          height: screenHeight * 0.025,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                '\$ 45',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.1,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.06,
                                    ),
                                    Container(
                                      width: screenWidth * 0.13,
                                      height: screenHeight * 0.06,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 10,
                                                offset: Offset(3, 3),
                                                spreadRadius: 3)
                                          ],
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                              top: screenHeight * 0.23,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: screenHeight * 0.2,
                                      ),
                                      Container(
                                        width: screenWidth * 0.13,
                                        height: screenHeight * 0.06,
                                        decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 10,
                                                  offset: Offset(3, 3),
                                                  spreadRadius: 3)
                                            ],
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.1,
                                  ),
                                  ClipPath(
                                    clipper: ItemSecondClipper(),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 0.05,
                                          right: screenWidth * 0.05),
                                      width: screenWidth * 0.46,
                                      height: screenHeight * 0.35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: screenHeight * 0.07,
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.45,
                                            height: screenHeight * 0.15,
                                            child: const Image(
                                                image: NetworkImage(
                                                    'https://img.freepik.com/premium-photo/pair-yellow-sneakers-with-word-bottom_771335-53383.jpg?w=740')),
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow.shade500,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
                                              const Text(
                                                '4.6',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.02,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'Adidas',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.003),
                                          SizedBox(
                                            height: screenHeight * 0.015,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'Joggers',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.015),
                                          SizedBox(
                                            height: screenHeight * 0.025,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  '\$ 145',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      SizedBox(
                        width: screenWidth * 0.86,
                        height: screenHeight * 0.585,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipPath(
                                  clipper: ItemClipper(),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.05,
                                        right: screenWidth * 0.05),
                                    alignment: Alignment.topCenter,
                                    width: screenWidth * 0.46,
                                    height: screenHeight * 0.35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: screenHeight * 0.02,
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.45,
                                          height: screenHeight * 0.15,
                                          child: const Image(
                                              image: NetworkImage(
                                                  'https://img.freepik.com/free-vector/sticker-blue-t-shirt-with-coathanger_1308-80723.jpg?w=740&t=st=1683831063~exp=1683831663~hmac=8708fafd362146bdaf77999d4fbb5c3cdfd6ede39b7611305b46e2ff367baf33')),
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade500,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.01,
                                            ),
                                            const Text(
                                              '4.7',
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.02,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'OutFitters',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.003),
                                        SizedBox(
                                          height: screenHeight * 0.015,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'T Shirt',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.015),
                                        SizedBox(
                                          height: screenHeight * 0.025,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                '\$ 98',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.1,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.06,
                                    ),
                                    Container(
                                      width: screenWidth * 0.13,
                                      height: screenHeight * 0.06,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 10,
                                                offset: Offset(3, 3),
                                                spreadRadius: 3)
                                          ],
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                              top: screenHeight * 0.23,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: screenHeight * 0.2,
                                      ),
                                      Container(
                                        width: screenWidth * 0.13,
                                        height: screenHeight * 0.06,
                                        decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 10,
                                                  offset: Offset(3, 3),
                                                  spreadRadius: 3)
                                            ],
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.1,
                                  ),
                                  ClipPath(
                                    clipper: ItemSecondClipper(),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 0.05,
                                          right: screenWidth * 0.05),
                                      width: screenWidth * 0.46,
                                      height: screenHeight * 0.35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: screenHeight * 0.07,
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.45,
                                            height: screenHeight * 0.15,
                                            child: const Image(
                                                image: NetworkImage(
                                                    'https://img.freepik.com/free-vector/modern-sport-sneakers-blue-color-with-white-shoelaces-realistic-single-image-white-background-isolated-illustration_1284-31208.jpg?w=740&t=st=1683831176~exp=1683831776~hmac=4f75c33e6bad7b13c60bd98dcb6b3e8792cbc2ac7ed7761037dceeb892756fc5')),
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow.shade500,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
                                              const Text(
                                                '4.3',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.02,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'Nike',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.003),
                                          SizedBox(
                                            height: screenHeight * 0.015,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'Sinkers',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.015),
                                          SizedBox(
                                            height: screenHeight * 0.025,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  '\$ 105',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      SizedBox(
                        width: screenWidth * 0.86,
                        height: screenHeight * 0.585,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipPath(
                                  clipper: ItemClipper(),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.05,
                                        right: screenWidth * 0.05),
                                    alignment: Alignment.topCenter,
                                    width: screenWidth * 0.46,
                                    height: screenHeight * 0.35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: screenHeight * 0.02,
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.45,
                                          height: screenHeight * 0.15,
                                          child: const Image(
                                              image: NetworkImage(
                                                  'https://img.freepik.com/premium-vector/tshirt-long-sleeve_648765-4975.jpg?w=360')),
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade500,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.01,
                                            ),
                                            const Text(
                                              '3.1',
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.02,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'Calypso Crx',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.003),
                                        SizedBox(
                                          height: screenHeight * 0.015,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'T Shirt',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.015),
                                        SizedBox(
                                          height: screenHeight * 0.025,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                '\$ 35',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.1,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.06,
                                    ),
                                    Container(
                                      width: screenWidth * 0.13,
                                      height: screenHeight * 0.06,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 10,
                                                offset: Offset(3, 3),
                                                spreadRadius: 3)
                                          ],
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                              top: screenHeight * 0.23,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: screenHeight * 0.2,
                                      ),
                                      Container(
                                        width: screenWidth * 0.13,
                                        height: screenHeight * 0.06,
                                        decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 10,
                                                  offset: Offset(3, 3),
                                                  spreadRadius: 3)
                                            ],
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.1,
                                  ),
                                  ClipPath(
                                    clipper: ItemSecondClipper(),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 0.05,
                                          right: screenWidth * 0.05),
                                      width: screenWidth * 0.46,
                                      height: screenHeight * 0.35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: screenHeight * 0.07,
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.45,
                                            height: screenHeight * 0.15,
                                            child: const Image(
                                                image: NetworkImage(
                                                    'https://img.freepik.com/free-vector/pair-blue-sandals_1308-39706.jpg?w=740&t=st=1683831311~exp=1683831911~hmac=93c8f59f3c4d5f0c2484a025529cf05375167845bae048fa4eec724a17b2e68d')),
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow.shade500,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
                                              const Text(
                                                '3.4',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.02,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'Nike',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.003),
                                          SizedBox(
                                            height: screenHeight * 0.015,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'Slippers',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.015),
                                          SizedBox(
                                            height: screenHeight * 0.025,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  '\$ 57',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      SizedBox(
                        width: screenWidth * 0.86,
                        height: screenHeight * 0.585,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipPath(
                                  clipper: ItemClipper(),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.05,
                                        right: screenWidth * 0.05),
                                    alignment: Alignment.topCenter,
                                    width: screenWidth * 0.46,
                                    height: screenHeight * 0.35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: screenHeight * 0.02,
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.45,
                                          height: screenHeight * 0.15,
                                          child: const Image(
                                              image: NetworkImage(
                                                  'https://img.freepik.com/premium-vector/realistic-white-figure-skates_204595-1145.jpg?w=740')),
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade500,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.01,
                                            ),
                                            const Text(
                                              '3.9',
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.02,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'Calypso Crx',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.003),
                                        SizedBox(
                                          height: screenHeight * 0.015,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'Skating',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.015),
                                        SizedBox(
                                          height: screenHeight * 0.025,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                '\$ 210',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.1,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.06,
                                    ),
                                    Container(
                                      width: screenWidth * 0.13,
                                      height: screenHeight * 0.06,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 10,
                                                offset: Offset(3, 3),
                                                spreadRadius: 3)
                                          ],
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                              top: screenHeight * 0.23,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: screenHeight * 0.2,
                                      ),
                                      Container(
                                        width: screenWidth * 0.13,
                                        height: screenHeight * 0.06,
                                        decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 10,
                                                  offset: Offset(3, 3),
                                                  spreadRadius: 3)
                                            ],
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.1,
                                  ),
                                  ClipPath(
                                    clipper: ItemSecondClipper(),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 0.05,
                                          right: screenWidth * 0.05),
                                      width: screenWidth * 0.46,
                                      height: screenHeight * 0.35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: screenHeight * 0.09,
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.43,
                                            height: screenHeight * 0.13,
                                            child: const Image(
                                                image: NetworkImage(
                                                    'https://img.freepik.com/premium-photo/pair-blue-white-shoes-with-word-nike-bottom_771335-53387.jpg?w=740')),
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow.shade500,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
                                              const Text(
                                                '3.1',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.02,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'Nike',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.003),
                                          SizedBox(
                                            height: screenHeight * 0.015,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'Snickers',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.015),
                                          SizedBox(
                                            height: screenHeight * 0.025,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  '\$ 120',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      SizedBox(
                        width: screenWidth * 0.86,
                        height: screenHeight * 0.585,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipPath(
                                  clipper: ItemClipper(),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.05,
                                        right: screenWidth * 0.05),
                                    alignment: Alignment.topCenter,
                                    width: screenWidth * 0.46,
                                    height: screenHeight * 0.35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: screenHeight * 0.02,
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.45,
                                          height: screenHeight * 0.15,
                                          child: const Image(
                                              image: NetworkImage(
                                                  'https://img.freepik.com/premium-vector/vector-cartoon-turquoise-men-shirt-with-roll-up-sleeves_574806-751.jpg?w=740')),
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade500,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.01,
                                            ),
                                            const Text(
                                              '4.6',
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.005,
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.02,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'Calypso Crx',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.003),
                                        SizedBox(
                                          height: screenHeight * 0.015,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                'T Shirt',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )),
                                        ),
                                        SizedBox(height: screenHeight * 0.015),
                                        SizedBox(
                                          height: screenHeight * 0.025,
                                          child: const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Text(
                                                '\$ 305',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.1,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.06,
                                    ),
                                    Container(
                                      width: screenWidth * 0.13,
                                      height: screenHeight * 0.06,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 10,
                                                offset: Offset(3, 3),
                                                spreadRadius: 3)
                                          ],
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                              top: screenHeight * 0.23,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: screenHeight * 0.2,
                                      ),
                                      Container(
                                        width: screenWidth * 0.13,
                                        height: screenHeight * 0.06,
                                        decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 10,
                                                  offset: Offset(3, 3),
                                                  spreadRadius: 3)
                                            ],
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.1,
                                  ),
                                  ClipPath(
                                    clipper: ItemSecondClipper(),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 0.05,
                                          right: screenWidth * 0.05),
                                      width: screenWidth * 0.46,
                                      height: screenHeight * 0.35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: screenHeight * 0.09,
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.43,
                                            height: screenHeight * 0.13,
                                            child: const Image(
                                                image: NetworkImage(
                                                    'https://img.freepik.com/free-vector/white-shirt-with-red-sleeves-white-background_1308-88312.jpg?w=740&t=st=1683831657~exp=1683832257~hmac=648b3ae076d56fdee36266966f40bc54da5c5e231cd118e99e9d8d4332021a7a')),
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow.shade500,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.01,
                                              ),
                                              const Text(
                                                '3.4',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.005,
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.02,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'Adidas',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.003),
                                          SizedBox(
                                            height: screenHeight * 0.015,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  'T Shirt',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                )),
                                          ),
                                          SizedBox(
                                              height: screenHeight * 0.015),
                                          SizedBox(
                                            height: screenHeight * 0.025,
                                            child: const FittedBox(
                                                fit: BoxFit.fill,
                                                child: Text(
                                                  '\$ 65',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  double degToRadian(double deg) {
    return deg * pi / 180;
  }
}
