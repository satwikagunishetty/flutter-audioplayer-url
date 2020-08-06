import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var audioplay = AudioPlayer();
    var song = AudioCache(fixedPlayer: audioplay);
    play_song() {
      song.play("mirchi.mp3");
    }

    pause_song() {
      audioplay.pause();
    }

    stop_music() {
      audioplay.stop();
    }

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Mirchi Mirchi......',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Hurray!!!!!!!!!!!',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.blue,
            ),
            onPressed: play_song,
          ),
          IconButton(
            icon: Icon(
              Icons.pause,
              color: Colors.blue,
            ),
            onPressed: pause_song,
          ),
          IconButton(
              icon: Icon(
                Icons.stop,
                color: Colors.blue,
              ),
              onPressed: stop_music),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Favourite song mirchiiiiii.......... '
        'The movie begins with Jai bharath varma (Prabhas) practicing guitar when a girl runs to'
        ' him and asks him to save her from a gang of goons chasing her. Then Jay, without fighting,'
        ' resolves the conflict. The girl introduces herself as Manasa (Richa Gangopadhyay). They slowly'
        ' become friends. But one day she asks Jai to leave her and go as she cannot stand the separation'
        ' from him if their relationship develops any further. He then goes back to India and changes the mind of Manasa'
        ' brother and when they give a vacation he goes with him to his village.'
        'There, where everyone areconservative in nature, he changes their nature and makes them more lovable. Written by rahulsrivatsava',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Audio Player'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'mirchi.jpg',
              width: 600,
              height: 300,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
