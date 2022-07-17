import 'package:flutter/material.dart';
import 'package:open_library/view/register_page.dart';
import 'package:open_library/view/search_page.dart';
import 'package:open_library/view/user_home.dart';
import 'package:open_library/viewmodel/home_view_model.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeViewModel>(context, listen: true);

    final screens = [const SearchPage(), const UserHome(), RegisterPage()];
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: 1,
              onTap: (index) => {homeProvider.setcurrenIndex(index)},
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Busqueda',
                  //activeIcon: ImageIcon(AssetImage('assets/articles_icon.svg'))
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin),
                  label: 'Usuario',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.login),
                  label: 'Registro',
                ),
              ]),
          body: IndexedStack(
            index: homeProvider.currentIndex,
            children: screens,
          )),
    );
  }
}
