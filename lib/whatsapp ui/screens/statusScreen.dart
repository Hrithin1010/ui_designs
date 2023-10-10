// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class StausScreen extends StatelessWidget {
  List updatesList = [
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVhTtKgTFmx6EjcbI99QRr1f840DxGgPH-FA&usqp=CAU',
      'name': 'Puyol',
      'time': '57 minutes ago'
    },
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToo7bq5vL9sHXDEiwI1yLgXZa_QfeRpoFigQ&usqp=CAU',
      'name': 'De bryune',
      'time': '1 hour ago'
    },
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGtCwIwfq0rRbCEhGS9jg3Mz_cfpZ0K9gGbw&usqp=CAU',
      'name': 'iniesta',
      'time': ' hour ago'
    },
  ];
  List viewedList = [
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQptoq4jXM5eNunh_GamhYnHJPdMAM5aXn4pg&usqp=CAU',
      'name': 'Messi ',
      'time': 'Yesterday, 5:30 pm'
    },
    // {
    //   'dp':
    //       'https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=600',
    //   'name': 'Anand Cb',
    //   'time': 'Yesterday, 6:00 pm'
    // }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff26cd61),
        onPressed: () {},
        child: Icon(Icons.camera_alt),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: CircleAvatar(
                        radius: 23,
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?size=338&ext=jpg&ga=GA1.2.1666965185.1672814344')),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green.shade500,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  )
                ],
              ),
              title: Text(
                'My Status',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Tap to add status up date'),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Color(0xffefefef),
              child: const Text(
                'Recent Updates',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue.shade300,
                      radius: 30,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(updatesList[index]['dp']),
                        radius: 25,
                      ),
                    ),
                    title: Text(updatesList[index]['name']),
                    subtitle: Text(updatesList[index]['time']),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      indent: 80,
                      endIndent: 10,
                    ),
                itemCount: updatesList.length),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Color(0xffefefef),
              child: const Text(
                'Viewed Updates',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(viewedList[index]['dp']),
                    ),
                    title: Text(viewedList[index]['name']),
                    subtitle: Text(viewedList[index]['time']),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      indent: 80,
                      endIndent: 10,
                    ),
                itemCount: viewedList.length),
          ],
        ),
      ),
    );
  }
}