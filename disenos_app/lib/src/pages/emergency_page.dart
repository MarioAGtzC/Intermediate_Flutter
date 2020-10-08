import 'package:flutter/material.dart';

import 'package:disenos_app/src/widgets/headers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IconHeader(
        icon: FontAwesomeIcons.plus,
        subtitulo: 'Haz solicitado',
        titulo: 'Asistencia Médica',
        color1: Color(0xff526bf6),
        color2: Color(0xff67acf2),
      )
    );
  }
}