import 'package:flutter/material.dart';

class MoreAboutMe extends StatelessWidget {
  const MoreAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Skills",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              buildSkillItem("PhotoShop", "90%"),
              SizedBox(height: 20,),
              buildSkillItem("Dart", "95%"),
              SizedBox(height: 20,),
              buildSkillItem("Flutter", "95%"),
              SizedBox(height: 20,),
              buildSkillItem("OOP", "80%"),
              SizedBox(height: 20,),
              buildSkillItem("Html", "80%"),
              SizedBox(height: 20,),
              buildSkillItem("Css", "80%"),
              SizedBox(height: 20,),
              buildSkillItem("Creativity", "75%"),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildSkillItem(String skill , String percentage)=>Row(
    children:  [
      Text(skill,textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      Spacer(),
      Text(percentage,textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))
    ],
  );
}
