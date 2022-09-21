import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/screens/about/about_mobile.dart';
import 'package:carousel_slider/carousel_slider.dart';


class portfolioMobile extends StatefulWidget {
  @override
  State<portfolioMobile> createState() => portfolioMobileState();
}

class portfolioMobileState extends State<portfolioMobile> {
  final List<images> img=[
    images(imageView:'assets/1.JPG',imageSlider: ['assets/1.JPG']),
    images(imageView: 'assets/2.JPG', imageSlider: ['assets/2.JPG']),
    images(imageView: 'assets/3.JPG', imageSlider: ['assets/3.JPG']),
    images(imageView: 'assets/4.JPG', imageSlider: ['assets/4.JPG']),
    images(imageView: 'assets/5.JPG', imageSlider: ['assets/5.JPG']),
    images(imageView: 'assets/6.JPG', imageSlider: ['assets/6.JPG']),
    images(imageView: 'assets/7.JPG', imageSlider: ['assets/7.JPG']),
    images(imageView: 'assets/8.JPG', imageSlider: ['assets/8.JPG']),

  ];
  List<String>appimages=['https://firebasestorage.googleapis.com/v0/b/ziad-335c7.appspot.com/o/apps%2Fmovies%2F0.jpg?alt=media&token=d1aca36a-0521-46f8-b437-78c2c71eb850','https://firebasestorage.googleapis.com/v0/b/ziad-335c7.appspot.com/o/apps%2Fmovies%2F1.jpg?alt=media&token=305b65ff-2858-4f3a-a985-7fd876ebd091','https://firebasestorage.googleapis.com/v0/b/ziad-335c7.appspot.com/o/apps%2Fmovies%2F2.jpg?alt=media&token=f44cdec5-0865-4f71-a6c2-9607d9a5ee60'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          title("Portfolio"),
          SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
              height: 700,
              color: Colors.black,
              child: GridView.count(
               crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children:List.generate(img.length ,( index) {
                    return ElevatedButton(
                      style: ButtonStyle(
                          padding:MaterialStateProperty.all(EdgeInsets.zero)),
                      child: Container(
                        height: 400,
                        width: double.infinity,
                        child: Image.asset(
                          "${img[index].imageView}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (bctx) {
                              return CarouselSlider(
                                options: CarouselOptions(
                                    height: 500,
                                    onPageChanged: (index, _) {
                                    },
                                    enlargeCenterPage: true,
                                    autoPlay: true,
                                    autoPlayInterval:
                                        const Duration(seconds: 2)),
                                items: List.generate(img[index].imageSlider.length, (x) => SizedBox(
                                  height: 500,
                                  width: double.infinity,
                                  child: Image.asset(
                                    "${img[index].imageSlider[x]}",
                                    fit: BoxFit.cover,
                                  ),
                                ))
                              );
                            });
                      },
                    );
                  }),
            ),
          ))
        ],
      ),
    );
  }
}

Text title(title) {
  return Text(title,
      style: GoogleFonts.belgrano(
          fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white));
}
class images{
  var imageView;
  List<String> imageSlider ;

  images({
    required this.imageView,
    required this.imageSlider,
  });
}
