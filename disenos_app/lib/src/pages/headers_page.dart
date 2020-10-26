import 'package:disenos_app/src/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:disenos_app/src/widgets/headers.dart';
import 'package:provider/provider.dart';

class HeadersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme.accentColor;

    return Scaffold(
      body: HeaderWave(color: appTheme,)
    );
  }
}