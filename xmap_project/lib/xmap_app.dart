import 'package:flutter/material.dart';
import 'package:xmap_project/router/router.dart';
import 'package:xmap_project/theme/default_theme.dart';

class XmapApp extends StatelessWidget {
  const XmapApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xmap app',
      theme: defaultTheme,
      routes: routes,
    );
  }
}