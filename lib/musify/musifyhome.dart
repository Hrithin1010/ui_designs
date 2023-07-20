
import 'package:flutter/material.dart';
import 'package:ui_designs/musify/playlist.dart';
import 'package:ui_designs/musify/search.dart';
import 'package:ui_designs/musify/settings.dart';

void main() {
  runApp(MaterialApp(
    home: musicUI2(),
    debugShowCheckedModeBanner: false,
  ));
}

class musicUI2 extends StatefulWidget {
  @override
  State<musicUI2> createState() => _musicUI2State();
}

class _musicUI2State extends State<musicUI2> {
  int _currentSelectedIndex = 0;

  final _pages=[
    musifysearch(),
    musicui1(),
    settings()


  ];

  List images = [
    "https://preview.redd.it/izavjno6ipy51.jpg?auto=webp&s=e8480b53eb23f3ac90a9cdf738607d1634e954cf",
    "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG11c2ljc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSER3rtIUi2o2qirA32AQyANKCE-4Nmhh6Hjw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTch-ErO4oNw8WmIjk3Y1-GzyVDdpxi74WbjbqEIsmO8TyvkosLi3Ha0yV1bAv_E68fjPs&usqp=CAU",
  ];

  List musicimages = [
    "https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2017/03/29/1331851585147_2/eminem-rap-god",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Attention_%28Charlie_Puth_song%29_single_cover.svg/1200px-Attention_%28Charlie_Puth_song%29_single_cover.svg.png",
    "https://c-cl.cdn.smule.com/rs-s35/arr/15/a0/4bd87e54-da45-47e2-91b5-1ff80a3cea08_1024.jpg",
    "https://images.unsplash.com/photo-1474692295473-66ba4d54e0d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c25hcCUyMHNvbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1518887572120-cae9ec0daab6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c25hcCUyMHNvbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1518911710364-17ec553bde5d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c25hcCUyMHNvbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1667752949527-6cdac036b59c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHNvbmclMjBwbGF5bGlzdHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  ];

  List singerName = [
    "Eminem",
    "Charlie puth",
    "One direction",
    "Coldplay",
    "Duncan lawrence",
    "The weeknd",
    "Rosa linn"
  ];

  List musicName = [
    "Rap God",
    "Attention",
    "Night changes",
    "Closer",
    "Arcade",
    "Blinding lights",
    "SNAP",
    "jhvad",
    "hgad"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Musify.",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 170, 11, 144)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Suggested playlists",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 170, 11, 144)),
                    )),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      images.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 200,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  image: DecorationImage(
                                      image: NetworkImage(images[index]),
                                      fit: BoxFit.fill)),
                            ),
                          )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 35),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Recommended for you",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 170, 11, 144)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          musicimages.length,
                          (index) => ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 80,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            musicimages[index],
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              title: Text(
                                musicName[index],
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Text(
                                singerName[index],
                                style: TextStyle(
                                    color: Color.fromARGB(255, 170, 11, 144),
                                    fontSize: 12),
                              ),
                              trailing: Wrap(
                                children: [
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 11.0,
                                  ),
                                  Icon(
                                    Icons.download_sharp,
                                    color: Colors.white,
                                  )
                                ],
                              ))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          _currentSelectedIndex = newIndex;
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => musifysearch()));
                  },
                  icon: Icon(Icons.search)),
              label: "Search",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: "Playlists",
            icon: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => musicui1()));
              },
              icon: Icon(Icons.queue_music),
            ),
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => settings()));
                },
                icon: Icon(Icons.settings),
              ),
              backgroundColor: Colors.black,
              label: "Settings"),
        ],
        selectedIconTheme:
            IconThemeData(color: Color.fromARGB(255, 170, 11, 144)),
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 181, 94, 123)),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      ),
    );
  }
}
