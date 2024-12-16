import 'package:flutter/material.dart';
import 'package:xmap_project/features/repos/spot_repo.dart';
import 'package:xmap_project/features/spot_list/widgets/spot_list_tile.dart';
import 'package:yandex_maps_mapkit_lite/mapkit.dart';
import 'package:yandex_maps_mapkit_lite/yandex_map.dart';

import '../../models/spot.dart';

class SpotListPage extends StatefulWidget {
  const SpotListPage({super.key});

  @override
  State<StatefulWidget> createState() => _SpotListPageState();
}

class _SpotListPageState extends State<SpotListPage> {
  List<Spot>? _spotList;
  MapWindow? _mapWindow;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);//TODO убрать хардкод и юзать объект темы
    return Scaffold(
      body: _spotList == null // Проверяем, загружены ли данные
          ? const Center(child: CircularProgressIndicator()) // Показываем индикатор загрузки
          : Column(children: [
            // Карта
            Expanded(child:
              YandexMap(onMapCreated: (mapWindow) => _mapWindow = mapWindow)
            ),
            // Список
            Expanded(child:
              ListView.separated(
                itemCount: _spotList!.length, // Используем длину загруженного списка
                itemBuilder: (BuildContext context, int index) {
                  return SpotListTile(spot: _spotList![index]); // Используем безопасное обращение
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            ),
      ],)
    );
  }

  @override
  void initState() {
    _loadSpots();
    super.initState();
  }

  Future<void> _loadSpots() async {
    _spotList = await SpotRepo().getAllSpotList();
    setState(() {});
  }
}