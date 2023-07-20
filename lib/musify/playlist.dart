
import 'package:flutter/material.dart';
import 'package:ui_designs/musify/musifyhome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: musicui1(),
  ));
}

class musicui1 extends StatelessWidget {







  List images = [
    "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG11c2ljc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://preview.redd.it/izavjno6ipy51.jpg?auto=webp&s=e8480b53eb23f3ac90a9cdf738607d1634e954cf",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSER3rtIUi2o2qirA32AQyANKCE-4Nmhh6Hjw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTch-ErO4oNw8WmIjk3Y1-GzyVDdpxi74WbjbqEIsmO8TyvkosLi3Ha0yV1bAv_E68fjPs&usqp=CAU",
    "https://upload.wikimedia.org/wikipedia/commons/a/a3/Charlie_Puth_-_Attention_%28Official_Single_Cover%29.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkavbGb_0ojshnIX3hGITYA9E-mNp4idCkbQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxuMvoZAbe_YlbYDPWpGAKqJP_zEc3Ov6_0w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMgmfoZYicJoI1T5A882l4Fv2A1I5jSIWuZA&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Playlists",
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 170, 11, 144)),
                        ),
                      )
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromARGB(255, 0, 0, 0),
                              hintText: 'Search...',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 170, 11, 144),
                              ),
                              suffixIcon: Icon(
                                Icons.search,
                                color: Color.fromARGB(255, 170, 11, 144),
                              )),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 35,
                        mainAxisSpacing: 35,
                        // mainAxisExtent: 10,
                      ),
                      itemBuilder: (context, index) => Container(
                          height: 100,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: NetworkImage(images[index]),
                                fit: BoxFit.cover),
                          )),
                    ),
                  )
                ])),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
        
          items: [
            BottomNavigationBarItem(
                icon: IconButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>musicUI2()));
                }, icon: Icon(Icons.home)),
                label: "Home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
              
              backgroundColor: Colors.black,
              label: "Library",
              icon: Icon(Icons.library_add),
            ),
            // BottomNavigationBarItem( icon: IconButton(onPressed: (){
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>settings()));
            // }, icon:Icon(Icons.settings),),
            //    backgroundColor: Colors.black, label: "Settings"),
          ],
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 170, 11, 144)),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
