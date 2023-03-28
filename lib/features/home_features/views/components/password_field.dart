import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;

  PasswordFormField({required this.controller});

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(

        labelText: 'Mot de passe',
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },

        ),
      ),
      validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Veuillez entrer un mot de passe';
      }
      if (value.length < 8) {
        return 'Le mot de passe doit comporter au moins 8 caractères';
      }
      return null;
    },
      obscureText: _obscureText,
    );
  }
}
