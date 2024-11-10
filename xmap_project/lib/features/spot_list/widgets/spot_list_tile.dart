import 'package:flutter/material.dart';

import '../models/spot.dart';

class SpotListTile extends StatelessWidget {
  const SpotListTile({
    super.key,
    required this.spot,
  });

  final Spot spot;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          spot.name,
          style: const TextStyle(fontWeight: FontWeight.w700),),
        subtitle: Text(spot.description),
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
              arguments: spot)
        } //TODO,
    );
  }

}