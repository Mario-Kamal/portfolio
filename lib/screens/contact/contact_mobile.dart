import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contactMobile extends StatefulWidget {
  const contactMobile({Key? key}) : super(key: key);

  @override
  State<contactMobile> createState() => contactMobileState();
}

class contactMobileState extends State<contactMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.topCenter,
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildContactButton(() {}, Icons.home, "Bani Swef - Egypt"),
          SizedBox(height: 20.0,),
          buildContactButton(() {launch('tel:+201227439611');}, Icons.call, "Call Me"),
          SizedBox(height: 20.0,),
          buildContactButton(() {launch('mailto:mario.kamal55@gmail.com?subject=This is Subject Title&body=This is Body of Email');
          }, Icons.mail, "Email Me"),
        ],
      ),
    );
  }

  SizedBox buildContactButton(fun, icon, text) {
    return SizedBox(
      height: 160,
      width: 250,
      child: ElevatedButton(
        style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red)
            )
        ),backgroundColor: MaterialStateProperty.all(Colors.orange.shade500),alignment: Alignment.center,),
          onPressed: fun,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,size: 90.0,color: Colors.black,),
              SizedBox(
                height: 10.0,
              ),
              Text(text,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
            ],
          )),
    );
  }
}
