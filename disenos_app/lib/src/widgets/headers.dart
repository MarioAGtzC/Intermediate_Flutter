import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Color(0xff615AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70)
        )
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderDiagonalPainter(),
        ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    // paint.style = PaintingStyle.stroke;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0;

    final path = new Path();

    // Dibujar con el path y el paint
    path.moveTo(0, size.height * 0.35); // Mueve el pincel (originalmente está en 0,0)
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderTriangularPainter(),
        ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    // path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderPicoPainter(),
        ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20.0;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderCurvoPainter(),
        ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20.0;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.4,
      size.width,
      size.height * 0.25
    );
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWave extends StatelessWidget {
  final Color color;

  const HeaderWave({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderWavePainter(this.color),
        ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  final Color color;

  _HeaderWavePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    // Propiedades
    paint.color = this.color; //Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20.0;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.3,
      size.width * 0.5,
      size.height * 0.25
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.2,
      size.width,
      size.height * 0.25
    );
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaves extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderWavesPainter(),
        ),
    );
  }
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20.0;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(0, size.height * 0.15);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.2,
      size.width * 0.5,
      size.height * 0.15
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.1,
      size.width,
      size.height * 0.15
    );
    path.lineTo(size.width, 0);

    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.85);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.9,
      size.width * 0.5,
      size.height * 0.85
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.8,
      size.width,
      size.height * 0.85
    );
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaveGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderWaveGradientPainter(),
        ),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = new Rect.fromCircle(
      center: Offset(0.0, 55.0),
      radius: 180
    );

    final Gradient gradient = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xff6d05e8),
        Color(0xffc012ff),
        Color(0xff6d05fa),
      ],
      stops: [
        0.2,
        0.5,
        1.0
      ]
    );


    final paint = new Paint()..shader = gradient.createShader(rect);

    // Propiedades
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20.0;

    final path = new Path();

    // Dibujar con el path y el paint
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.3,
      size.width * 0.5,
      size.height * 0.25
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.2,
      size.width,
      size.height * 0.25
    );
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class IconHeader extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;

  const IconHeader({
    @required this.icon,
    @required this.titulo,
    @required this.subtitulo,
    this.color1 = Colors.grey,
    this.color2 = Colors.blueGrey
  });

  @override
  Widget build(BuildContext context) {
    final Color colorBlanco = Colors.white.withOpacity(0.7);

    return Stack(
      children: <Widget>[
        _IconHeaderBackground(
          color1: this.color1,
          color2: this.color2,
        ),
        Positioned(
          top: -50,
          left: -70,
          child: FaIcon(
            this.icon,
            size: 250,
            color: Colors.white.withOpacity(0.2),
          )
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 80, width: double.infinity,),
            Text(this.subtitulo, style: TextStyle(fontSize: 20, color: colorBlanco),),
            SizedBox(height: 20,),
            Text(this.titulo, style: TextStyle(fontSize: 25, color: colorBlanco, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            FaIcon(
              this.icon,
              size: 80,
              color: Colors.white,
            )
          ],
        )
      ],
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {
  final Color color1;
  final Color color2;

  const _IconHeaderBackground({
    @required this.color1,
    @required this.color2
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            this.color1,
            this.color2
          ]
        )
      ),
    );
  }
}