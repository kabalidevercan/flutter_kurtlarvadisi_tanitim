import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_kurtlarvadisi/player_item.dart';

import 'model/players.dart';
import '../data/strings.dart';

class PlayerList extends StatelessWidget {
  late List<Players> allPlayers;
  PlayerList() {
    allPlayers = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return PlayerItem(listelenenPlayer: allPlayers[index]);
        },
        itemCount: allPlayers.length,
      )),
    );
  }

  List<Players> veriKaynaginiHazirla() {
    List<Players> gecici = [];
    for (int i = 0; i < 20; i++) {
      var playerName = Counter.player_names[i];
      var playerDetail = Counter.about_players[i];
      var playerSmallPhoto = Counter.player_names[i] + "${i + 1}.png";
      var playerBigPhoto = Counter.player_names[i] + "_big" + "${i + 1}.png";

      Players addPlayer =
          Players(playerName, playerDetail, playerSmallPhoto, playerBigPhoto);
      gecici.add(addPlayer);
    }
    return gecici;
  }
}
