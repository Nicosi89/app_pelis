import 'package:app_pelis/controllers/controller_descubre_pelis.dart';
import 'package:app_pelis/widgets/pelis_card.dart';
import 'package:flutter/material.dart';

import '../models/model_pelis_novedades.dart';

class HomeScreen extends StatefulWidget {
  final ControllerNovedadesPelis controllerNovedadesPelis;

  const HomeScreen({Key? key, required this.controllerNovedadesPelis})
      : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Results>> getListMovies;

  @override
  void initState() {
  getListMovies = widget.controllerNovedadesPelis.getDataNovedades();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            width: double.infinity,
            height: 900,
            child: Column(children: [
              Container(
                color: Colors.red,
                height: 300,
                width: double.infinity,
                child: const Center(
                  child: (Text('Hero Imagen')),
                ),
              ),
              FutureBuilder<List<Results>>(
                  future: getListMovies,
                  builder: (context, AsyncSnapshot<List<Results>> snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.done:
                        if (snapshot.data != null) {
                          return Expanded(
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final Results peli = snapshot.data![index];
                                    print('El objeto peli es $peli');
                                    return PelisCard(peli: peli);
                                  }));
                        } else {
                          return const Expanded(

                            child: Center(
                              child: Text('Está muy vacío'),
                            ),
                          );
                        };
                      case ConnectionState.waiting:
                        return const CircularProgressIndicator(

                        );
                      case ConnectionState.none:
                        return const Expanded(
                          child: Center(
                            child: Text('No se ha podido recibir la data'),
                          ),
                        );
                      default: return const Expanded(
                          child: Center(
                            child: Text('No se sabe que habrá pasado 💁🏽‍'),
                          ),
                        );
                    }
                  })
            ])));
  }
}
