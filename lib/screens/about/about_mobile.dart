import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/screens/about/more_about_me.dart';

class aboutMobile extends StatefulWidget {
  const aboutMobile({Key? key}) : super(key: key);

  @override
  State<aboutMobile> createState() => aboutMobileState();
}

class aboutMobileState extends State<aboutMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 800,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/m1.JPG'),
                radius: 95,
              ),
            ),
            height(20.0),
            title('Mario Kamal'),
            height(20.0),
            description(
                'A Flutter Developer who provides you with consistent performance from designing the application, planning a timeline, and developing any complicated application within a short time with high efficiency of work.'),
            height(20.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    foregroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreAboutMe()));
                },
                child: Text(
                  "More About Me",
                  style: TextStyle(fontSize: 20),
                )),
            height(20.0),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10.0),
              child: Column(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  about('Birthday', '26/9/2001'),
                  height(10.0),
                  about('Address', 'Bani Swef - Egypt'),
                  height(10.0),
                  about('Email', 'Mario.kamal55@gmail.com'),
                  height(10.0),
                  about('Phone', '+201227439611'),
                  height(10.0),
                  about('Study', 'Computer Science'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row about(about1, about2) {
    return Row(
      children: [
        Text("$about1 :",
            style: GoogleFonts.cinzel(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        Text("  $about2",
            style: GoogleFonts.bellotaText(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ],
    );
  }

  Text description(desc) {
    return Text(desc, textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey.shade500,
        ));
  }

  Text title(title) {
    return Text(title,
        style: GoogleFonts.belgrano(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.white));
  }

  SizedBox height(height) =>
      SizedBox(
        height: height,
      );
}

// void buildAlertDialoge(BuildContext context) {
//   final alert = AlertDialog(
//       backgroundColor: Colors.black,
//       title: const Text(
//         'Skills',
//         textAlign: TextAlign.center,
//         style: TextStyle(
//             fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
//       ),
//       content: SingleChildScrollView(
//         child: SizedBox(
//           height: 220,
//           child: Column(
//             children: [
//           Row(
//           children: [
//           Text("PhotoShop", textAlign: TextAlign.center,
//             style: TextStyle(
//                 fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
//             Spacer(),
//             Text("90%",textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Dart",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
//               Spacer(),
//               Text("95%",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Flutter",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
//               Spacer(),
//               Text("95%",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))
//             ],
//           ),
//           Row(
//             children: [
//               Text("OOP",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
//               Spacer(),
//               Text("80%",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Html",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
//               Spacer(),
//               Text("80%",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Css",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
//               Spacer(),
//               Text("80%",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))
//             ],
//           ),
//           Row(
//             children: [
//               Text("Creativity",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
//               Spacer(),
//               Text("75%",textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))
//             ],
//           ),
//           ],
//         )),
//       )
//   ,);
//   showDialog(
//   barrierDismissible: false,
//   context: context,
//   builder: (BuildContext ctx) {
//   return alert;
//   });
// }
