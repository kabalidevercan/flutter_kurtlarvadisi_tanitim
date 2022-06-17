import 'package:flutter/material.dart';

import 'actor_detail.dart';
import 'model/players.dart';

class PlayerItem extends StatelessWidget {
  final Players listelenenPlayer;
  const PlayerItem({required this.listelenenPlayer, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ActorDetail(secilenActor: listelenenPlayer),
            ));
          },
          leading: Image.asset(
            "images/" + listelenenPlayer.playerSmallPhoto,
            height: 64,
            width: 64,
            fit: BoxFit.cover,
          ),
          title: Text(listelenenPlayer.playerName),
          trailing: Icon(
            Icons.arrow_forward_sharp,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
