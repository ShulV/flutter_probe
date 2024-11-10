import 'package:flutter/material.dart';

import '../../spot_list/models/spot.dart';

class SpotItemPage extends StatefulWidget {
  const SpotItemPage({super.key});

  @override
  State<StatefulWidget> createState() => _SpotItemPageState();
}

class _SpotItemPageState extends State<SpotItemPage> {
  Spot? spot;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is Spot, 'You must provide String args');
    spot = args as Spot;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Используйте объект темы
    return Scaffold(
      appBar: AppBar(
        title: Text(spot != null ? spot!.name : '...'), // Исправлено условие
      ),
      body: Center(
        child: Text(spot != null ? spot!.description : 'Нет описания'), // Добавлено отображение описания
      ),
    );
  }

}