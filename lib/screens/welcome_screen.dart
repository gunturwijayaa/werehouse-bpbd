import 'package:flutter/material.dart';
import 'package:bpbd/screens/signin_screen.dart';
import 'package:bpbd/screens/signup_screen.dart';
import 'package:bpbd/theme/theme.dart';
import 'package:bpbd/widgets/custom_scaffold.dart';
import 'package:bpbd/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
 Widget build(BuildContext context) {
  return CustomScaffold(
    child: Column(
      children: [
        // Bagian atas
        Flexible(
          flex: 1,
          child: Container(
            // Container untuk bagian atas
          ),
        ),
        
        // Bagian tengah dengan tombol Login dan Sign Up
        Flexible(
          flex: 1,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                Expanded(
                  child: WelcomeButton(
                    buttonText: 'Login',
                    onTap: SignInScreen(),
                    color: Colors.transparent,
                    textColor: Color.fromARGB(255, 68, 31, 31),
                  ),
                ),
                Expanded(
                  child: WelcomeButton(
                    buttonText: 'Sign Up',
                    onTap: const SignUpScreen(),
                    color: Colors.white,
                    textColor: lightColorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        
        // Bagian bawah
        Flexible(
          flex: 1,
          child: Container(
            // Container untuk bagian bawah
          ),
        ),
      ],
    ),
  );
}

}
