import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:safe_sleep/colors.dart';
import 'package:safe_sleep/smart/login_page.dart';
import 'package:safe_sleep/widget/card_planet.dart';
import 'package:concentric_transition/concentric_transition.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "Secure Your Home",
      subtitle:
          "Secure Your Home with Precision, Harness Line-Based Detection to Define Your Boundaries",
      image: 'asset/Animation.json',
      backgroundColor: Color.fromARGB(255, 112, 255, 172),
      titleColor: Color.fromARGB(255, 8, 32, 21),
      subtitleColor: Color.fromARGB(255, 0, 0, 0),
      background: LottieBuilder.asset("asset/bg-1.json"),
    ),
    CardPlanetData(
      title: "SMART RECOGNITION",
      subtitle:
          "Use our Smart Person Recognition to recognize People at your DoorStep.",
      image: 'asset/smart reco.json',
      backgroundColor: tone,
      titleColor: const Color.fromARGB(255, 0, 0, 0),
      subtitleColor: const Color.fromARGB(255, 0, 0, 0),
      background: LottieBuilder.asset("asset/bg-1.json"),
    ),
    CardPlanetData(
      title: "Secure Your Home",
      subtitle:
          "Use Intrusion Area and Line based Detection to Hard Fence your Home.",
      image: 'asset/camera.json',
      backgroundColor: Color.fromARGB(255, 43, 230, 174),
      titleColor: Color.fromARGB(255, 0, 0, 0),
      subtitleColor: Colors.black,
      background: LottieBuilder.asset("asset/bg-1.json"),
    ),
    CardPlanetData(
      title: "SECURED ACCESS",
      subtitle: "Secured App with Password and Email-based Access.",
      image: 'asset/camra.json',
      backgroundColor: tone,
      titleColor: Color.fromARGB(255, 0, 0, 0),
      subtitleColor: Color.fromARGB(255, 0, 0, 0),
      background: LottieBuilder.asset("asset/bg-1.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: 4,
        itemBuilder: (int currentIndex) {
          return CardPlanet(data: data[currentIndex]);
        },
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
      ),
    );
  }
}
