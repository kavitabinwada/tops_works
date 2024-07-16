import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Ass_71(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Ass_71 extends StatefulWidget {
  const Ass_71({super.key});

  @override
  State<Ass_71> createState() => _Ass_71State();
}

class _Ass_71State extends State<Ass_71> {
  List<Widget> _widgetList = [
    Photos(),
    AudioScreen(),
    VideoScreen(),
  ];
  int _selectedIndex = 0;
  _itemselected(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ass 71'),
      ),
      body: _widgetList[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 300,
              child: DrawerHeader(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    onTap: () {
                      _itemselected(0);
                    },
                    leading: Icon(Icons.photo_camera_back),
                    title: Text(
                      'Gallary',
                      style: TextStyle(fontSize: 22, color: Colors.purple),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      _itemselected(1);
                    },
                    leading: Icon(Icons.audiotrack),
                    title: Text(
                      'Audio',
                      style: TextStyle(fontSize: 22, color: Colors.blueAccent),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      _itemselected(2);
                    },
                    leading: Icon(Icons.video_camera_back_rounded),
                    title: Text(
                      'Video',
                      style: TextStyle(fontSize: 22, color: Colors.brown),
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}

List<AssetImage> _imageList = [
  AssetImage('assets/images/flower2.jpeg'),
  AssetImage('assets/images/flower3.jpeg'),
  AssetImage('assets/images/mountain.jpg'),
  AssetImage('assets/images/mountin.jpg'),
  AssetImage('assets/images/salad1.jpeg'),
  AssetImage('assets/images/sea.jpg'),
  AssetImage('assets/images/junkfood3.jpeg'),
  AssetImage('assets/images/junkfood4.jpeg'),
  AssetImage('assets/images/noodles1.jpeg'),
  AssetImage('assets/images/DeveloperI1.webp'),
  AssetImage('assets/images/DevImage2.webp'),
  AssetImage('assets/images/food1.jpeg'),
  AssetImage('assets/images/Colo1.jpeg'),
  AssetImage('assets/images/Colo1.jpeg'),
  AssetImage('assets/images/Colo1.jpeg'),
  AssetImage('assets/images/flower2.jpeg'),
  AssetImage('assets/images/flower3.jpeg'),
  AssetImage('assets/images/mountain.jpg'),
  AssetImage('assets/images/mountin.jpg'),
  AssetImage('assets/images/salad1.jpeg'),
  AssetImage('assets/images/sea.jpg'),
  AssetImage('assets/images/junkfood3.jpeg'),
  AssetImage('assets/images/junkfood4.jpeg'),
  AssetImage('assets/images/noodles1.jpeg'),
  AssetImage('assets/images/DeveloperI1.webp'),
  AssetImage('assets/images/DevImage2.webp'),
  AssetImage('assets/images/food1.jpeg'),
  AssetImage('assets/images/Colo1.jpeg'),
  AssetImage('assets/images/Colo1.jpeg'),
  AssetImage('assets/images/Colo1.jpeg'),
  AssetImage('assets/images/flower2.jpeg'),
  AssetImage('assets/images/flower3.jpeg'),
  AssetImage('assets/images/mountain.jpg'),
  AssetImage('assets/images/mountin.jpg'),
  AssetImage('assets/images/salad1.jpeg'),
  AssetImage('assets/images/sea.jpg'),
  AssetImage('assets/images/junkfood3.jpeg'),
  AssetImage('assets/images/junkfood4.jpeg'),
  AssetImage('assets/images/noodles1.jpeg'),
  AssetImage('assets/images/DeveloperI1.webp'),
  AssetImage('assets/images/DevImage2.webp'),
  AssetImage('assets/images/food1.jpeg'),
  AssetImage('assets/images/Colo1.jpeg'),
  AssetImage('assets/images/Colo1.jpeg'),
  AssetImage('assets/images/Colo1.jpeg'),
];

class Photos extends StatefulWidget {
  const Photos({super.key});

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
      itemCount: _imageList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (context, index) => Container(
        decoration:
            BoxDecoration(image: DecorationImage(image: _imageList[index])),
      ),
    ));
  }
}

class Music {
  String song;
  String singer;
  String album;

  Music({required this.song, required this.singer, required this.album});
}

List<Music> _musicList = [
  Music(song: 'song1', singer: 'Atif Aslam', album: 'album1'),
  Music(song: 'song2', singer: 'Alka Yagnik', album: 'album2'),
  Music(song: 'song3', singer: 'Shreya Ghosal', album: 'album3'),
  Music(song: 'song4', singer: 'Sonu Nigam', album: 'album4'),
  Music(song: 'song5', singer: 'Asha Bhosle', album: 'album5'),
  Music(song: 'song6', singer: 'Udit Narayan', album: 'album6'),
  Music(song: 'song7', singer: 'Arijit Singh', album: 'album7'),
  Music(song: 'song8', singer: 'Kumar Sanu', album: 'album8'),
  Music(song: 'song9', singer: 'Arijit Singh', album: 'album9'),
  Music(song: 'song10', singer: 'Shreya Ghosal', album: 'album10'),
  Music(song: 'song11', singer: 'Udit Narayan', album: 'album11'),
  Music(song: 'song12', singer: 'Kumar Sanu', album: 'album12'),
  Music(song: 'song13', singer: 'Atif Aslam', album: 'album13'),
];

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _musicList.length,
      itemBuilder: (context, index) => ListTile(
        onTap: () {},
        title: Text(
          _musicList[index].song,
          style: TextStyle(fontSize: 24),
        ),
        subtitle: Row(
          children: [
            Row(
              children: [
                Icon(Icons.album),
                Text(_musicList[index].album),
              ],
            ),
            Row(
              children: [
                Icon(Icons.mic),
                Text(_musicList[index].singer),
              ],
            )
          ],
        ),
        trailing: PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
                child: ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text('Play'),
            )),
            PopupMenuItem(
                child: ListTile(
              leading: Icon(Icons.delete_forever_outlined),
              title: Text('Delete'),
            ))
          ],
        ),
      ),
    );
  }
}

class Video {
  String name;
  AssetImage thumbnail;
  String len;

  Video({required this.name, required this.thumbnail, required this.len});
}

List<Video> _videoList = [
  Video(
      name: 'Video1',
      thumbnail: AssetImage('assets/images/mountain.jpg'),
      len: '2:10'),
  Video(
      name: 'Video2',
      thumbnail: AssetImage('assets/images/DeveloperI1.webp'),
      len: '2:10'),
  Video(
      name: 'Video3',
      thumbnail: AssetImage('assets/images/DevImage2.webp'),
      len: '2:10'),
  Video(
      name: 'Video4',
      thumbnail: AssetImage('assets/images/flower2.jpeg'),
      len: '2:10'),
  Video(
      name: 'Video5',
      thumbnail: AssetImage('assets/images/flower3.jpeg'),
      len: '2:10'),
  Video(
      name: 'Video6',
      thumbnail: AssetImage('assets/images/mountain.jpg'),
      len: '2:10'),
  Video(
      name: 'Video7',
      thumbnail: AssetImage('assets/images/mountin.jpg'),
      len: '2:10'),
  Video(
      name: 'Video8',
      thumbnail: AssetImage('assets/images/sea.jpg'),
      len: '2:10'),
  Video(
      name: 'Video9',
      thumbnail: AssetImage('assets/images/mountain.jpg'),
      len: '2:10'),
  Video(
      name: 'Video10',
      thumbnail: AssetImage('assets/images/mountain.jpg'),
      len: '2:10'),
  Video(
      name: 'Video11',
      thumbnail: AssetImage('assets/images/mountin.jpg'),
      len: '2:10'),
  Video(
      name: 'Video12',
      thumbnail: AssetImage('assets/images/mountain.jpg'),
      len: '2:10'),
];

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 130,
      itemCount: _videoList.length,
      itemBuilder: (context, index) => MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.all(0),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: _videoList[index].thumbnail,
                        )),
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Positioned(
                    left: 55,
                    top: 40,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50,
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _videoList[index].name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(_videoList[index].len),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
