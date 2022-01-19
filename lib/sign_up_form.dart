import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTextFormField('First Name'),
        buildTextFormField('Last Name'),
        buildTextFormField('Email'),
        buildTextFormField('Phone'),
        buildTextFormField('Password'),
        buildTextFormField('Confirm Password'),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
        ),
      ],
    );
  }

  TextFormField buildTextFormField(String hint) => TextFormField(
        // string hint for display
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color(0xeb164e44),
          ),
        ),
      );
}
