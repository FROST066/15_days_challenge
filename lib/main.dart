import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

const Color appYellow = Color(0xFFFFAB00);
const Color appMar = Color(0xFF430711);

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> boolList = [true, false, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .8,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          // color: Colors.blue,
                          margin: const EdgeInsets.only(top: 130, left: 200),
                          width: 230,
                          child: Text(
                            "NEW ARRILVALS",
                            style: GoogleFonts.quicksand(
                                fontSize: 45,
                                fontWeight: FontWeight.w200,
                                color: appMar,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(top: 90, left: 50),
                            child: specialButton(),
                          ),
                        )
                      ],
                    ),
                    Container(
                        child:
                            StackWid(MediaQuery.of(context).size.height * .8)),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      height: MediaQuery.of(context).size.height * .5,
                      width: MediaQuery.of(context).size.width * .25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            width: 250,
                            child: Text(
                              "Tracksuit Heritage Kente",
                              style: GoogleFonts.quicksand(
                                  color: appMar,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 350,
                            child: Text(
                                "Co Ord Tracksuit Hertitage Kente, beautiful tracksuits, African print tracksuit. Unisex Kente Tracksuit. African Fashion online, Sports Africanwear for Men and Women.",
                                style: GoogleFonts.quicksand()),
                          ),
                          InkWell(
                              onTap: () {},
                              child: Image.asset("assets/images/shopNow.png")),
                          Text(
                            "Othes materials",
                            style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * .2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("assets/images/Ellipse3.png"),
                                Image.asset("assets/images/Ellipse4.png"),
                                Image.asset("assets/images/Ellipse5.png"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  fun(int id) {
    for (int i = 0; i < boolList.length; i++) {
      if (i == id) {
        boolList[i] = true;
      } else {
        boolList[i] = false;
      }
    }
    setState(() {
      boolList;
    });
  }

  Widget appBar() {
    return Container(
      // color: Colors.red,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          appBarItem(0, "Home", boolList[0], fun),
          appBarItem(1, "About", boolList[1], fun),
          appBarItem(2, "Partners", boolList[2], fun),
          appBarItem(3, "Store", boolList[3], fun),
          Container(
            margin: const EdgeInsets.all(12),
            child: Image.asset("assets/images/LogoAdewale.jpg",
                height: 80, width: 80),
          ),
          appBarItem(5, "Men", boolList[5], fun),
          appBarItem(6, "Women", boolList[6], fun),
          appBarItem(7, "Couple", boolList[7], fun),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/Vector.png"),
              const SizedBox(width: 40),
              Image.asset(
                "assets/images/Vector2.png",
                scale: 1.2,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget appBarItem(int id, title, bool active, fun(int id)) {
    return InkWell(
        onTap: () => fun(id),
        child: Column(
          children: [
            Text(
              title,
              style: active
                  ? GoogleFonts.quicksand(
                      fontSize: 16, color: appMar, fontWeight: FontWeight.bold)
                  : GoogleFonts.quicksand(
                      fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 5),
            Visibility(
                visible: active,
                child: Container(height: 2, width: 20, color: appYellow))
          ],
        ));
  }
}

Widget StackWid(double height) {
  return Stack(
    children: [
      SizedBox(
        // color: Colors.yellow,
        height: height,
        width: 400,
      ),
      Positioned(
          left: 0,
          child: Image.asset(
            "assets/images/garcon.png",
            scale: 1.9,
          )),
      Positioned(
          left: 60,
          top: 10,
          child: Image.asset(
            "assets/images/fille.png",
            scale: 1.9,
          ))
    ],
  );
}

Widget specialButton() {
  return Stack(
    children: [
      Container(
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: appYellow),
        height: 60,
        width: 60,
      ),
      Positioned(
          top: 15, left: 21, child: Image.asset("assets/images/Arrow3.png")),
      Positioned(
          top: 22, left: 17, child: Image.asset("assets/images/Arrow2.png")),
      Positioned(
          top: 30, left: 14, child: Image.asset("assets/images/Arrow1.png")),
    ],
  );
}
