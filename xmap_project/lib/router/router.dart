import 'package:xmap_project/features/spot_list/view/spot_list_page.dart';
import 'package:xmap_project/features/spot_item/view/spot_item_page.dart';

final routes = {
  '/': (context) => const SpotListPage(), //TODO можно сделать init page
  '/spot-item': (context) => const SpotItemPage(),
};