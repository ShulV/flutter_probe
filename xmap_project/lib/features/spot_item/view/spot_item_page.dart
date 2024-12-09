import 'package:flutter/material.dart';
import 'package:xmap_project/features/repos/spot_repo.dart';
import 'package:xmap_project/features/models/spot_with_image_links.dart';

class SpotItemPage extends StatefulWidget {
  const SpotItemPage({super.key, required this.spotId});
  final String spotId;

  @override
  State<StatefulWidget> createState() => _SpotItemPageState();
}

class _SpotItemPageState extends State<SpotItemPage> {
  SpotWithImageLinks? _spotWithImageLinks;

  @override
  void initState() {
    super.initState();
    _loadSpotWithImageLinks(widget.spotId);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Используйте объект темы
    return Scaffold(

      appBar: AppBar(
        title: Text(widget.spotId), // Исправлено условие
      ),
      body: _spotWithImageLinks == null // Проверяем, загружены ли данные
          ? const Center(child: CircularProgressIndicator()) :
      Column(
        children: [
          Text('Название: ${_spotWithImageLinks!.name}'),
          Text('Координаты: ${_spotWithImageLinks!.latitude}, '
              '${_spotWithImageLinks!.longitude}'),
          Expanded(
            child: ListView.builder(
              itemCount: _spotWithImageLinks!.spotImageLinks.length,
              itemBuilder: (context, index) {
                final imageLink = _spotWithImageLinks!.spotImageLinks[index];
                return Text('$index: http://144.91.114.139:8080$imageLink');
              },
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: _spotWithImageLinks!.spotImageLinks.length,
              itemBuilder: (context, index) {
                final imageLink = _spotWithImageLinks!.spotImageLinks[index];
                return Image.network('http://144.91.114.139:8080$imageLink');
              },
            ),
          ),
        ],
      ),
      );
  }



  Future<void> _loadSpotWithImageLinks(String spotId) async {
    _spotWithImageLinks = await SpotRepo().getSpotWithImageLinks(spotId);
    setState(() {});
  }
}