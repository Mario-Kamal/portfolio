import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class homeMobile extends StatefulWidget {
  const homeMobile({Key? key}) : super(key: key);

  @override
  State<homeMobile> createState() => homeMobileState();
}

class homeMobileState extends State<homeMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Column(
        children: [
          Text("HEY THERE! ❤️",
              style: GoogleFonts.b612(
                  fontSize: 25, color: Colors.white)),
          SizedBox(
            height: 10,
          ),
          Text("Mario Kamal",
              style: GoogleFonts.abrilFatface(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350.0,
            child: Center(
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                        '👉 A Junior Flutter Developer'),
                    TypewriterAnimatedText('👉 3D Artist'),
                    TypewriterAnimatedText('👉 Creative Thinker'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    final url =
                        'https://www.facebook.com/Mario0o0o0o0o0oZ';
                    await launch(url,
                        forceSafariVC: true,
                        forceWebView: true,
                        enableJavaScript: true);
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                    size: 40,
                  )),
              SizedBox(width: 10.0),
              IconButton(
                  onPressed: () async {
                    final url =
                        'https://www.instagram.com/mario__kemo/';
                    await launch(url,
                        forceSafariVC: true,
                        forceWebView: true,
                        enableJavaScript: true);
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                    size: 40,
                  )),
              SizedBox(width: 10.0),
              IconButton(
                  onPressed: () async {
                    final url = 'https://github.com/Mario-Kamal';
                    await launch(url,
                        forceSafariVC: true,
                        forceWebView: true,
                        enableJavaScript: true);
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                    size: 40,
                  )),
              SizedBox(width: 10.0),
              IconButton(
                  onPressed: () async {
                    final url =
                        'https://www.linkedin.com/in/mario-kamal-5b04981a6/';
                    await launch(url,
                        forceSafariVC: true,
                        forceWebView: true,
                        enableJavaScript: true);
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white,
                    size: 40,
                  )),
            ],
          ),
          SizedBox(height: 20,),
          Container(
              height: 500,
              child: Image.asset(
                "assets/mario.png",
                fit: BoxFit.fill,
              )),
        ],
      ),
    );
  }
}
