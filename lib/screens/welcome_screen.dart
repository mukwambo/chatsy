import 'package:chatsy/screens/login_screen.dart';
import 'package:chatsy/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatsy/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  // This static screen will help us prevent the app from crashing in case of any change on the string
  static const String route = 'welcomeScreen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  // The 'with SingleTickerProviderStateMixin' gives our _WelcomeScreenState the ability to act as a ticker for a single animation. Had we had multiple animations then we would have used 'with TickerProviderStateMixin'.

  // The first thing that we need to do before creating the animation is we need to create the animation controller.
  late AnimationController controller;
  late Animation animation;

  // Since we want our animation to be called at the initialization stage, we have to override the initState() method.
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
      // vsync is the TickerProvider for the current context which in this case is our _WelcomeScreenState therefore we use the reserved word 'this' since we are in the sam class as the _WelcomeScreenState.
    );

    // The Curved animation class helps us move our animations in an uneven order
    animation = CurvedAnimation(
        parent: controller,
        curve: Curves
            .decelerate); // NB: When using the curve make sure the upperbound is NOT greater than one, else the app will crash

    controller
        .forward(); // This tells the controller to start the animation from 0 all the way to the upperbound. Had we wanted the animation to start from the upperbound downwards, we could have used 'controller.reverse()'

    controller.addListener(() {
      // The .addListener listens for change in the value as it moves through the provided value (upperBound)
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: animation.value * 60,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: controller.value * 45,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87,
                  ),
                  child: AnimatedTextKit(
                    totalRepeatCount: 5,
                    animatedTexts: [
                      TypewriterAnimatedText('Quick Chat'),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
                buttonText: 'Login',
                buttonColor: Colors.lightBlueAccent,
                onPressed: () {
                  // Navigate to the login screen
                  Navigator.pushNamed(context, LoginScreen.route);
                }),
            RoundedButton(
                buttonText: 'Register',
                buttonColor: Colors.blueAccent,
                onPressed: () {
                  // Navigate to the registration screen
                  Navigator.pushNamed(context, RegistrationScreen.route);
                }),
          ],
        ),
      ),
    );
  }
}
