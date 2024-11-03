import 'package:flutter/material.dart';

class SpotListTile extends StatelessWidget {
  const SpotListTile({
    super.key,
    required this.spotName,
  });

  final String spotName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          spotName,
          style: TextStyle(fontWeight: FontWeight.w700),),
        subtitle: const Text("subtext"),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward_ios),
          onPressed: () {
            //ignoring
          },
        ),
        leading: Image.network("https://www.amic.ru/images/post_gallery/gallery/3396/40063/medium.jpg?_=1752364182", height: 40,),
        onTap: () => {
          Navigator.of(context).pushNamed(
              '/spot-item',
              arguments: spotName)
        } //TODO,
    );
  }

}