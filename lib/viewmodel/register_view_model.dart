import 'package:flutter/cupertino.dart';
import 'package:open_library/models/form_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/shared_preferences_util.dart';

class RegisterViewModel extends ChangeNotifier {
  FormModel _model = FormModel();
  DateTime _selectedDated = DateTime.now();
  String _age = '';
  String _gender = 'Masculino';

  get model => _model;
  get selectedDated => _selectedDated;
  get age => _age;
  get gender => _gender;

  setAge(String age) {
    _age = age;
    notifyListeners();
  }

  setDate(DateTime date) {
    _selectedDated = date;
    notifyListeners();
  }

  setGender(String gender) {
    _gender = gender;
    notifyListeners();
  }

  setFormModel(FormModel model) {
    _model = model;
    notifyListeners();
  }

  savePrefs(String name, String lastName, String age, String birthDate,
      String email, String phoneNumber) async {
    await SharedPrefs.setString('name', name);
    await SharedPrefs.setString('lastName', lastName);
    await SharedPrefs.setString('birthDate', birthDate);
    await SharedPrefs.setString('email', email);
    await SharedPrefs.setString('age', age);
    await SharedPrefs.setString('phoneNumber', phoneNumber);
    notifyListeners();
  }
}
