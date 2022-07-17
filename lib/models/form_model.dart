import 'package:flutter/cupertino.dart';

class FormModel extends ChangeNotifier {
  String? name;
  String? lastName;
  String? phoneNumber;
  String? email;
  String? birthDate;
  String? age;
  String? gender;

  FormModel(
      {this.name,
      this.lastName,
      this.phoneNumber,
      this.email,
      this.birthDate,
      this.age,
      this.gender});
}
