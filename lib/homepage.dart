import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portofolio/pick.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHomePage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

  Widget Item(String title){
    return  "$title"
                .text
                .bold
                .white
                .xl
                .wide
                .center
                .make()
                .box
                .p8
                .roundedLg
                .alignCenter
                .square(200)
                .neumorphic(
                    color:Vx.blue900,elevation: 5, curve: VxCurve.flat)
                .make();
  }
  Widget Middle() {
    return Material(
      color:  Vx.blue900,
      child: Flex(
        direction: context.isMobile ? Axis.horizontal : Axis.vertical,
        children: <Widget>[
          "All projects\n"
              .richText
              .bold
              .withTextSpanChildren(
                  ["I have built".textSpan.yellow100.bold.make()])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
              child: VxSwiper(items: [
                Item("WhatsApp Clone"),
                Item("Twitter Clone"),
                Item("ChatApp"),
                Item("TwistSMS"), 
          ],
          height:170,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: 1.seconds,
          viewportFraction: context.isMobile?0.75:0.4,
          ))
        ],
      ).h(context.isMobile ? 500 : 300),
    );
  }
    return Scaffold(
      backgroundColor: Vx.blue900,
      body: VStack(
        [
          Pic(),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(left:20),
              height: 60,
              child: Text("Adam Musa Ali",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: Colors.grey))
                  ).shimmer(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text('You can find me there',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.grey)),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child:
                        Icon(AntDesign.twitter, color: Colors.blue, size: 25),
                  ),
                  Icon(AntDesign.github, color: Colors.black, size: 25),
                  Icon(AntDesign.facebook_square, color: Colors.blue, size: 25),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child:
                        Icon(AntDesign.instagram, color: Colors.red, size: 25),
                  ),
                ],
              ),
            ).shimmer(),
          ),
          SizedBox(height:20),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 180,
            child: Middle()
          ),
          SizedBox(height:20),
          Icon(AntDesign.codesquare,color:Vx.white,size:50).p16().shimmer()
        ],
      ).scrollVertical(),
    );
  }
}
