import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(title: 'Communicate'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final barcolor = const Color(0xFF00BC40 );
    final bgcolor = const Color(0xFFCAD5E2);
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: [
          ListTile(
            title: Text('Home'),
            trailing: Icon(Icons.home),
          ),
          ListTile(
            title: Text('Login'),
            trailing: Icon(Icons.login),
          ),
          ListTile(title: Text('Support'), trailing: Icon(Icons.help_center)),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.more,
          ),
          backgroundColor: barcolor,
          onPressed: () {}),
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: barcolor,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Glad to you see you here!',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 2.0,
              ),

            ),
            Image(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Ym9va3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',

              ),
              width: 120,
              height: 150,

            ),
            
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondScreen();
                  }));
                },
                child: Text(
                  'Tap to move to another screen',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),

                )
                )
          ],
        ),
      ), 
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class   _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
        body: Center(
       child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Thank you and please come again", 
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          ),),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.logout, color: Colors.red[800]),
        )
      ]),
    ));
  }
}