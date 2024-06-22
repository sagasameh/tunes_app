import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';
import 'package:tunes_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: 'sounds/note1.wav'),
    TuneModel(color: Color(0xFFFD982B), sound: 'sounds/note2.wav'),
    TuneModel(color: Color(0xFFFBF35D), sound: 'sounds/note3.wav'),
    TuneModel(color: Color(0xFF3DC25A), sound: 'sounds/note4.wav'),
    TuneModel(color: Color(0xFF0DA687), sound: 'sounds/note5.wav'),
    TuneModel(color: Color(0xFF0DA1E7), sound: 'sounds/note6.wav'),
    TuneModel(color: Color(0xFF9911A7), sound: 'sounds/note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Tune'),
        elevation: 0,
        backgroundColor: Color(0xFF243139),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }
  // List<TuneItem> getTuneItems(){
  //   List<TuneItem>items=[];
  //   for (var color in tuneColors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
