import 'package:chatsy/screens/chat_screen.dart';
import 'package:chatsy/screens/login_screen.dart';
import 'package:chatsy/screens/registration_screen.dart';
import 'package:chatsy/screens/welcome_screen.dart';

getRoutes() {
  return {
    WelcomeScreen.route: (context) => const WelcomeScreen(),
    LoginScreen.route: (context) => const LoginScreen(),
    RegistrationScreen.route: (context) => const RegistrationScreen(),
    ChatScreen.route: (context) => const ChatScreen(),
  };
}
