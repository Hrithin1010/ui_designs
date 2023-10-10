// ignore_for_file: file_names, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  List profileDatas = [
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlqfWjchaaKCiKbdNKME8pwKmVE4MVXMDyyg&usqp=CAU',
      'name': 'Maradona',
      'message': 'buen día',
      'time': '2:30'
    },
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQptoq4jXM5eNunh_GamhYnHJPdMAM5aXn4pg&usqp=CAU',
      'name': 'Messi',
      'message': 'hello',
      'time': '2:00'
    },
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM7aIPnQoVNvyI4WLrAawFbsi-IJvCfMaG6w&usqp=CAU',
      'name': 'Ronaldinho ',
      'message': 'feliz cumpleaños',
      'time': '4:00'
    },
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8W7IH9RUBuhGZfGXRdRfe3--bp8RTQ35PXA&usqp=CAU',
      'name': 'Ronaldo',
      'message': 'How was the last match?',
      'time': '5:00'
    },
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGtCwIwfq0rRbCEhGS9jg3Mz_cfpZ0K9gGbw&usqp=CAU',
      'name': 'iniesta',
      'message': '¿Cómo es el nuevo club?',
      'time': '9:00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff26cd61),
        onPressed: () {},
        child: Icon(Icons.message),
      ),
      body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          itemCount: 100,
          itemBuilder: (context, index) {
            //random number generation
            Random random = Random();
            int randomNumber = random.nextInt(5) + 1;

            var datas = (index % profileDatas.length);
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(profileDatas[datas]['dp']),
              ),
              title: Text(
                profileDatas[datas]['name'],
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              subtitle: Text(
                profileDatas[datas]['message'],
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
              ),
              trailing: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                direction: Axis.vertical,
                children: [
                  Text(
                    profileDatas[datas]['time'],
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff26cd61),
                    radius: 10,
                    child: Text(
                      '${randomNumber}',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, int index) => Divider(
                indent: 80,
                endIndent: 10,
              )),
    );
  }
}