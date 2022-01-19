import 'package:flutter/material.dart';
import 'package:sign_up_page/checkbox.dart';
import 'package:sign_up_page/sign_up_form.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Create Account',
                style: TextStyle(
                  color: Color(0xeb164e44),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: const [
                  Text(
                    'Already a member?',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xeb164e44),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    // wrap with widget to add gesturedetector
                    'Log In',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xeb164e44),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: SignUpForm(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: CheckBox(
                text: 'Agree to terms and conditions',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: CheckBox(
                text: 'I have at least 18 years old',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Sign Up'),
                  style: TextButton.styleFrom(
                    primary: const Color(0xeb164e44),
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
