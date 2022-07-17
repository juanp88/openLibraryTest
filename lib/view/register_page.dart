import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_library/models/form_model.dart';
import 'package:open_library/utils/ageCalculator.dart';
import 'package:open_library/view/user_home.dart';
import 'package:open_library/viewmodel/register_view_model.dart';
import 'package:open_library/widgets/drop_down.dart';
import 'package:provider/provider.dart';
import 'package:validators/validators.dart' as validator;
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../viewmodel/home_view_model.dart';
import '../viewmodel/user_view_model.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  FormModel model = FormModel();
  TextEditingController dateController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final registerProvider =
        Provider.of<RegisterViewModel>(context, listen: true);
    final homeProvider = Provider.of<HomeViewModel>(context, listen: true);
    final userHomeProvider = Provider.of<UserViewModel>(context, listen: true);

    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;

    DateTime selectedDate = DateTime.now();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: registerProvider.selectedDated,
          firstDate: DateTime(1940),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate) {
        registerProvider.setDate(picked);
        dateController.text =
            DateFormat('yyyy-MM-dd').format(registerProvider.selectedDated);
        registerProvider.setAge(calculateAge(picked).toString());
        ageController.text = registerProvider.age;
      }
    }

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          //contenedor nombres y apellidos
          Container(
            alignment: Alignment.topCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  width: halfMediaWidth,
                  child: MyTextFormField(
                    formatters: [
                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                    ],
                    hintText: 'Nombres',
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Ingresa tu nombre';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      model.name = value!;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: halfMediaWidth,
                  child: MyTextFormField(
                    hintText: 'Apellidos',
                    formatters: [
                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                    ],
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Ingresa tus apellidos';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      model.lastName = value!;
                    },
                  ),
                )
              ],
            ),
          ),
          //contenedor email y telefono
          Container(
            alignment: Alignment.topCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  width: halfMediaWidth,
                  child: MyTextFormField(
                    isPhoneNumber: true,
                    maxLength: 10,
                    formatters: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                    ],
                    hintText: 'Teléfono',
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Ingresa tu número de teléfono';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      model.phoneNumber = value!;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: halfMediaWidth,
                  child: MyTextFormField(
                    hintText: 'Email',
                    isEmail: true,
                    validator: (String? value) {
                      if (!validator.isEmail(value!)) {
                        return 'Ingresa una dirección de email valida';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      model.email = value!;
                    },
                  ),
                ),
              ],
            ),
          ),
          //contenedor fecha y edad
          Container(
            alignment: Alignment.topCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  width: halfMediaWidth,
                  child: MyTextFormField(
                    controller: dateController,
                    onTap: (() => _selectDate(context)),
                    hintText: 'Fecha de nacimiento',
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Selecciona tu fecha de nacimiento';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      model.birthDate = value;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: halfMediaWidth,
                  child: MyTextFormField(
                    readOnly: true,
                    controller: ageController,
                    hintText: 'Edad',
                    isEmail: true,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Selecciona tu fecha de nacimiento';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      model.age = value!;
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 50,
              alignment: Alignment.topCenter,
              width: halfMediaWidth,
              child: DropDown()),

          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                registerProvider.savePrefs(
                    model.name!,
                    model.lastName!,
                    model.age!,
                    model.birthDate!,
                    model.email!,
                    model.phoneNumber!);
                userHomeProvider.setRefreshPage(true);
                homeProvider.setcurrenIndex(1);
              }
            },
            child: const Text(
              'Guardar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
