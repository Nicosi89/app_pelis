import 'package:flutter/material.dart';

class TextoTituloCardsPelis extends StatelessWidget {
  final String texto;


  const TextoTituloCardsPelis({
    Key? key,

    required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      //padding: const EdgeInsets.only(left: 20),
      child: Text(
        texto,
        style: TextStyle(
          color: textTheme.headline1!.color,
          fontSize: textTheme.headline1!.fontSize,
          fontWeight: textTheme.headline1!.fontWeight,
          overflow: TextOverflow.ellipsis,
          fontFamily: textTheme.headline1!.fontFamily,
          shadows: const [
            Shadow(
                color: Colors.black54,
                offset: Offset.infinite,
                blurRadius: 5
            )
          ],


        ),

      ),
    );
  }
}
