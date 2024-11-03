import 'package:flutter/material.dart';
import 'package:xmap_project/features/spot_list/widgets/spot_list_tile.dart';

class SpotListPage extends StatefulWidget {
  const SpotListPage({super.key});

  @override
  State<StatefulWidget> createState() => _SpotListPageState();
}

class _SpotListPageState extends State<SpotListPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);//TODO убрать хардкод и юзать объект темы
    return Scaffold(
      body: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            const spotName = 'Юбилейка';
            return const SpotListTile(spotName: spotName);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          }
      ),
    );
  }

}