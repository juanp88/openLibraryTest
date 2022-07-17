import 'package:flutter/material.dart';
import 'package:open_library/utils/constants/api_config.dart';
import 'package:open_library/utils/constants/app_styling.dart';
import 'package:open_library/utils/shared_preferences_util.dart';
import 'package:open_library/viewmodel/user_view_model.dart';
import 'package:provider/provider.dart';

import '../viewmodel/home_view_model.dart';
import '../widgets/info_card.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String name =
        SharedPrefs.getString('name') ?? 'No hay datos disponibles';
    final String lastName =
        SharedPrefs.getString('lastName') ?? 'No hay datos disponibles';
    final String age =
        SharedPrefs.getString('age') ?? 'No hay datos disponibles';
    final String birthDate =
        SharedPrefs.getString('birthDate') ?? 'No hay datos disponibles';
    final String email =
        SharedPrefs.getString('email') ?? 'No hay datos disponibles';
    final String phone =
        SharedPrefs.getString('phoneNumber') ?? 'No hay datos disponibles';

    final userHomeProvider = Provider.of<UserViewModel>(context, listen: true);

    userHomeProvider.refreshPage;

    return Scaffold(
        backgroundColor: AppStyling().bgUserPage,
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/user_avatar.png'),
                ),
                Text(
                  name + ' ' + lastName,
                  style: const TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Pacifico",
                  ),
                ),
                Text(
                  'Información Personal',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey[200],
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Source Sans Pro"),
                ),
                const SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),

                // we will be creating a new widget name info carrd

                InfoCard(
                    text: phone, label: 'Número télefonico', icon: Icons.phone),
                InfoCard(text: email, label: 'E-mail', icon: Icons.mail),
                InfoCard(
                  text: birthDate,
                  label: 'Fecha de Nacimiento',
                  icon: Icons.calendar_month,
                ),
                InfoCard(text: age, label: 'Edad', icon: Icons.numbers),
              ],
            ),
          ),
        ));
  }
}
