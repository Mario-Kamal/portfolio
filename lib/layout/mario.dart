import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/screens/about/about_mobile.dart';
import 'package:untitled1/screens/contact/contact_mobile.dart';
import 'package:untitled1/screens/home/home_mobile.dart';
import 'package:untitled1/screens/portfolio/portfoilio_mobile.dart';

class marioMobile extends StatefulWidget {
  const marioMobile({Key? key}) : super(key: key);

  @override
  State<marioMobile> createState() => _marioMobileState();
}

class _marioMobileState extends State<marioMobile> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mario",
            style: GoogleFonts.arbutusSlab(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor)),
        actions: [
          IconButton(
            onPressed: () {
              scrollController.animateTo(0,
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
            icon: Icon(Icons.home),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              scrollController.animateTo(800,
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
            icon: Icon(Icons.person),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              scrollController.animateTo(1600,
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
            icon: Icon(Icons.work),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              scrollController.animateTo(2400,
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
            icon: Icon(Icons.mail),
            iconSize: 30,
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          controller: scrollController,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                homeMobile(),
                SizedBox(
                  height: 50.0,
                ),
                aboutMobile(),
                SizedBox(
                  height: 50.0,
                ),
                portfolioMobile(),
                contactMobile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
