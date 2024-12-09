import 'package:flutter/cupertino.dart';
import 'package:xmap_project/features/spot_list/view/spot_list_page.dart';
import 'package:xmap_project/features/spot_item/view/spot_item_page.dart';

final routes = {
  '/': (context) => const SpotListPage(),
  '/spot-item': (context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return SpotItemPage(spotId: args);
  }
};