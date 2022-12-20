import 'package:flutter/material.dart';

class TextoSubTituloCardsPelis extends StatelessWidget {
  final String texto;


  const TextoSubTituloCardsPelis({
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
          color: textTheme.headline2!.color,
          fontSize: textTheme.headline2!.fontSize,
          fontWeight: textTheme.headline2!.fontWeight,
          overflow: TextOverflow.ellipsis,
          fontFamily: textTheme.headline2!.fontFamily,
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
