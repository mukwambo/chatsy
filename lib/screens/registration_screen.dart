import 'package:chatsy/components/rounded_button.dart';
import 'package:chatsy/constants.dart';
import 'package:chatsy/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegistrationScreen extends StatefulWidget {
  static const String route = 'registrationScreen';
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  // These variables will store the the input from the text fields i.e the users' email and password
  late String email;
  late String password;

  // Start without showing the spinner
  bool _showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: _showSpinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 200.0,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              TextField(
                // Email text field
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: kEmailHintText,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                // Password text field
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: kPasswordHintText,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                buttonText: 'Register',
                buttonColor: Colors.lightBlue,
                onPressed: () async {
                  // This setSate will initialize the spinning roccess
                  setState(() {
                    _showSpinner = true;
                  });
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    // Check if new user is not null before navigating the user to the chat screen
                    if (newUser != null) {
                      Navigator.pushNamed(context, ChatScreen.route);
                    }
                    // To prevent the spinner from continuously running, we use another setState then we set the showSpiner to false
                    setState(() {
                      _showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
