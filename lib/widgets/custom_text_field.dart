import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final String? Function(String?) validator;
  final Function(String?)? onSaved;
  final int? maxLength;
  final Function()? onTap;
  final List<TextInputFormatter>? formatters;
  final bool isPhoneNumber;
  final bool isEmail;
  final TextEditingController? controller;
  final bool readOnly;

  const MyTextFormField({
    Key? key,
    required this.hintText,
    required this.validator,
    required this.onSaved,
    this.maxLength,
    this.formatters,
    this.onTap,
    this.controller,
    this.readOnly = false,
    this.isPhoneNumber = false,
    this.isEmail = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onTap: onTap,
        readOnly: readOnly,
        controller: controller,
        maxLength: maxLength,
        inputFormatters: formatters,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail
            ? TextInputType.emailAddress
            : isPhoneNumber
                ? TextInputType.number
                : TextInputType.text,
      ),
    );
  }
}
