import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        title: Text('Selamat datang, [username]'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.timer_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none_outlined)),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.white,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.all(8.0),
              color: Colors.lightBlue.shade50,
              child: Container(
                height: 120,
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'images/task.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Text('Task yang telah selesai',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('0/0',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        showDialog(context: context, builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Add task'),
            backgroundColor: Colors.white,
            content: TextField(
              decoration: InputDecoration(hintText: 'Enter task'),
            ),
            actions: <Widget>[
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('Cancel')),
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: Text('Add'))
            ],
          );
        });
      },
      tooltip: 'Add task',
        backgroundColor: Colors.lightBlue.shade50,
        child: Icon(Icons.add),
      ),
    );
  }
}