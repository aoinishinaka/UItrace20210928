import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

List Mywork = ['Icons.add_a_photo, Issues', ''];

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> listItems = [
    {'icon': Icons.settings, 'color': Colors.green, 'title': 'Issues'},
    {'icon': Icons.settings, 'color': Colors.blue, 'title': 'Pull Requests'},
    {'icon': Icons.settings, 'color': Colors.purple, 'title': 'Repositories'},
    {'icon': Icons.settings, 'color': Colors.orange, 'title': 'Organization'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(),
                Expanded(
                  child: Container(),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.memory)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              width: double.infinity,
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              width: double.infinity,
              child: Text(
                'My Work',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.39,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              padding: EdgeInsets.all(0),
              child: ListView(children: [
                _ListItem(Icon(Icons.settings), Colors.green, 'Issues'),
                _ListItem(Icon(Icons.settings), Colors.blue, 'Pull Requests'),
                _ListItem(Icon(Icons.settings), Colors.purple, 'Repositories'),
                _ListItem(Icon(Icons.settings), Colors.orange, 'Organization'),
              ]),
            ),
            Container(
              margin: EdgeInsets.zero,
              child: Row(children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Favorites',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  'Edit',
                ),
                SizedBox(
                  width: 20,
                )
              ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(),
                  ),
                  Text(
                    'Add favorite repositories here to have\n '
                    'quick access at any time, without\n '
                    'having to search',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width * 0.8,
                    color: Colors.white,
                    child: Text(
                      'Add favorites',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {},
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list_rounded,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_offer_outlined,
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: 'Search'),
          ],
        ));
  }

  Widget _ListItem(Icon icon, Color color, String title) {
    return Container(
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.9, color: Colors.grey)),
      ),
      child: ListTile(
        tileColor: Colors.white,
        leading: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: icon),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
