import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTextFormField('First Name', false),
        buildTextFormField('Last Name', false),
        buildTextFormField('Email', false),
        buildTextFormField('Phone', false),
        buildTextFormField('Password', true),
        buildTextFormField('Confirm Password', true),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
        ),
      ],
    );
  }

  TextFormField buildTextFormField(String hint, bool pass) => TextFormField(
        obscureText: pass ? _isObscure : false,
        // string hint for display
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            // LINE COLOR
            borderSide: BorderSide(
              color: Color(0xeb164e44),
            ),
          ),
          suffixIcon: pass
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: _isObscure
                      ? const Icon(Icons.visibility_off,
                          color: Color(
                            0xeb164e44,
                          ))
                      : const Icon(
                          Icons.visibility,
                          color: Color(0xeb164e44),
                        ),
                )
              : null,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color(0xeb164e44),
          ),
        ),
      );
}
