import 'package:flutter/material.dart';

class BookTabs extends StatelessWidget {
  final String descripcion;
  final List<String> personajes;
  final List<String> lugares;

  const BookTabs(
      {Key? key,
      required this.descripcion,
      required this.personajes,
      required this.lugares})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                child: const TabBar(
                  tabs: [
                    Tab(
                      text: 'Descripción',
                    ),
                    Tab(text: 'Personajes'),
                    Tab(text: 'Lugares'),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: SingleChildScrollView(
                        child: Text(descripcion),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: personajes.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              child: Text(personajes[index]));
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: lugares.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              child: Text(lugares[index]));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
