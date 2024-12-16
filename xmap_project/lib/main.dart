import 'package:flutter/material.dart';
import 'package:xmap_project/xmap_app.dart';
import 'package:yandex_maps_mapkit_lite/init.dart' as init;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init.initMapkit(
      apiKey: '1ddcaf4d-15ff-447a-9cac-5b4c3aecaeea'
  );
  runApp(const XmapApp());
}

