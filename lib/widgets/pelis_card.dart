import 'package:flutter/material.dart';

import '../UI/constantes_dimensiones.dart';
import '../models/model_pelis_novedades.dart';
import '../UI/constants_images.dart';
import '../servicios/constantes.dart';
class PelisCard extends StatelessWidget {
  final Results peli;


  const PelisCard({Key? key, required this.peli}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstantesDimensiones.PELI_CARD_HEIGTH,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: (ConstantesDimensiones.PELI_CARD_HEIGTH),
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('${ServiceConstants.URLBASEIMAGES}${peli.backdropPath ?? ConstantsImages.IMAGENSINIMAGEN}',
                        ),
                      fit: BoxFit.fitWidth


                    )

                  ),
                ),
                Positioned(
                  top: 60,
                  child: Text(peli.title ?? peli.name ?? 'Sin Nombre',
                    style: const TextStyle(fontSize: 20,
                    color: Colors.white),


                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
