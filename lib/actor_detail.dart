import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'model/players.dart';

class ActorDetail extends StatefulWidget {
  final Players secilenActor;
  const ActorDetail({required this.secilenActor, Key? key}) : super(key: key);

  @override
  State<ActorDetail> createState() => _ActorDetailState();
}

class _ActorDetailState extends State<ActorDetail> {
  Color appbarRengi = Colors.pink;
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appbarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(widget.secilenActor.playerName),
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appbarRengi,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: Image.asset(
              "images/" + widget.secilenActor.playerBigPhoto,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                widget.secilenActor.playerDetail,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.secilenActor.playerBigPhoto}"));

    setState(() {
      appbarRengi = _generator.dominantColor!.color;
    });
  }
}
