// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  List callsDatas = [
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQptoq4jXM5eNunh_GamhYnHJPdMAM5aXn4pg&usqp=CAU',
      'name': 'Messi',
      'time': 'Yesterday,2:38'
    },
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlqfWjchaaKCiKbdNKME8pwKmVE4MVXMDyyg&usqp=CAU',
      'name': 'Maradona',
      'time': 'March 24, 2:00'
    },
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM7aIPnQoVNvyI4WLrAawFbsi-IJvCfMaG6w&usqp=CAU',
      'name': 'Ronaldinho',
      'time': 'March 23, 4:00'
    },
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGtCwIwfq0rRbCEhGS9jg3Mz_cfpZ0K9gGbw&usqp=CAU',
      'name': 'iniesta',
      'time': 'March 22, 5:00'
    },
    {
      'dp':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToo7bq5vL9sHXDEiwI1yLgXZa_QfeRpoFigQ&usqp=CAU',
      'name': 'De bryune',
      'time': 'February 01, 9:00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff26cd61),
        onPressed: () {},
        child: Icon(Icons.add_call),
      ),
      body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          itemCount: 100,
          itemBuilder: (context, index) {
            //random number generation
            Random random = Random();
            int randomNumber = random.nextInt(5) + 1;
            var datas = (index % callsDatas.length);
            return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(callsDatas[datas]['dp']),
                ),
                title: Text(
                  callsDatas[datas]['name'],
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                subtitle: Wrap(
                  children: [
                    Icon(
                      randomNumber % 2 == 0
                          ? Icons.call_received
                          : Icons.call_made,
                      size: 20,
                      color: randomNumber % 2 == 0 ? Colors.red : Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      callsDatas[datas]['time'],
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.phone,
                  color: Color(0xff075e54),
                ));
          },
          separatorBuilder: (context, int index) => Divider(
                indent: 80,
                endIndent: 10,
              )),
    );
  }
}