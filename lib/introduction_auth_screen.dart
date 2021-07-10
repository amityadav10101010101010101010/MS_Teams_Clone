import "package:flutter/material.dart";
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_application_1/universal_variables.dart';
import 'navigate_auth_screen.dart';

class IntroductionAuthScreen extends StatefulWidget {
  
  @override
  _IntroductionAuthScreenState createState() => _IntroductionAuthScreenState();
}

class _IntroductionAuthScreenState extends State<IntroductionAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome',
          body: 'Welcome to Ms Teams',
          decoration: PageDecoration(
            bodyTextStyle: ralewayStyle(20, Colors.black),
            titleTextStyle: montserratStyle(20, Colors.black),
          ),
          image: Center(
            child: Image(
              image: NetworkImage(
                'https://download.logo.wine/logo/Microsoft_Teams/Microsoft_Teams-Logo.wine.png',
              ),
            ),
          ),
        ),
        PageViewModel(
          title: 'Create & Join Meetings',
          body:  "Create Meeting codes and join meeting with codes with just a single click",
          decoration: PageDecoration(
            bodyTextStyle: ralewayStyle(20, Colors.black),
            titleTextStyle: montserratStyle(20, Colors.black),
          ),
          image: Center(
            child: Image(
              image: NetworkImage(
                "https://microsoft.acehacker.com/engage2021/img/demo-content/images/microsoft_teams.png",
              ),
            ),
          ),
        ),
        PageViewModel(
          title: "Privacy",
          body: "Your Privacy is our Concern",
          decoration: PageDecoration(
            bodyTextStyle: ralewayStyle(20, Colors.black),
            titleTextStyle: montserratStyle(20, Colors.black),
          ),
          image: Center(
            child: Image(
              image: NetworkImage(
                "https://microsoft.acehacker.com/engage2021/img/demo-content/images/chat_feature.png",
              ),
            ),
          ),
        ),
      ],
      onDone: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => NavigateAuthScreen()));
      },
      onSkip: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => NavigateAuthScreen()));
      },
      showSkipButton: true,
      skip: const Icon(
        Icons.skip_next,
        size: 45,
      ),
      next: const Icon(Icons.arrow_forward),
      done: Text(
        "DONE",
        style: ralewayStyle(20, Colors.black),
      ),
    );
  }
}
        
