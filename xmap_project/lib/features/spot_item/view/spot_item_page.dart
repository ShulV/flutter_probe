import 'package:flutter/material.dart';

class SpotItemPage extends StatefulWidget {
  const SpotItemPage({super.key});

  @override
  State<StatefulWidget> createState() => _SpotItemPageState();
}

class _SpotItemPageState extends State<SpotItemPage> {
  String? spotName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You must provide String args');
    spotName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);//TODO убрать хардкод и юзать объект темы
    return Scaffold(
      appBar: AppBar(title: Text(spotName ?? '...')),
    );
  }

}