import 'package:burgueria/utils/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return IntroductionScreen(
      pages: [
        PageViewModel(
          reverse: true,
          titleWidget: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum',
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 38.0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                  style: TextStyle(color: Colors.amber.shade50, fontSize: 20.0),
                ),
              ],
            ),
          ),
          bodyWidget: Container(
            height: size.height * 0.65,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage("assets/images/humburguer.png"),
              ),
            ),
          ),
          decoration: const PageDecoration(
            pageColor: const Color(0xFF8D0000),
          ),
        ),
        PageViewModel(
          reverse: true,
          titleWidget: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum',
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 38.0,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                  style: TextStyle(color: Colors.amber.shade50, fontSize: 20.0),
                ),
              ],
            ),
          ),
          bodyWidget: Row(
            children: [
              Container(
                height: size.height * 0.65,
                width: size.width * 0.65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.centerRight,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/humburguer.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 400.0),
                child: GestureDetector(
                  child: Text(
                    "OK",
                    style: TextStyle(
                      color: Colors.amber.shade50,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  onTap: () => AppNavigator.goToLogin(context),
                ),
              )
            ],
          ),
          decoration: const PageDecoration(
            pageColor: const Color(0xFF8D0000),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showNextButton: false,
      globalBackgroundColor: const Color(0xFF8D0000),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Colors.amber,
        color: Colors.amber.shade50,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
