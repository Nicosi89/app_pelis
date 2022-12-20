import 'package:app_pelis/UI/widgets/textoSubtituloTarjetaPeli.dart';
import 'package:flutter/material.dart';

import '../UI/constantes_dimensiones.dart';
import '../UI/widgets/textoTituloTarjetaPeli.dart';
import '../models/model_pelis_novedades.dart';
import '../UI/constants_images.dart';
import '../servicios/constantes.dart';
import 'package:app_pelis/helpers/date_formater.dart';
import '../helpers/date_formater.dart';

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
                  bottom: 0,
                  width: ConstantesDimensiones.PELI_CARD_WIDTH,
                  height: ConstantesDimensiones.PELI_CARD_HEIGTH / 2,
                  child: Container(
                    color: Colors.deepPurple,
                    padding: const EdgeInsets.only(left: 12, top: 12),
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextoTituloCardsPelis(texto: peli.title ?? peli.name ?? 'Sin Nombre'),
                        SizedBox(height: 5),
                        TextoSubTituloCardsPelis(texto: "Fecha de lanzamiento: ${DateFormater().formatDate(peli.releaseDate ?? "Null")}")

                      ],
                    ),
                    //height: ConstantesDimensiones.PELI_CARD_HEIGTH / 3,
                  ),
                ),







              ],
            ),
          )
        ],
      ),
    );
  }


}
