import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Avatar page'),
        centerTitle: true,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage( 'https://cdn.mos.cms.futurecdn.net/A5i4WqrzkMHmVCYsrLmeV.jpg' ),
              radius: 30.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('PE'),
              backgroundColor: Colors.amberAccent,
              
            ),
          ),
        ],
      ),
      body: Center( 
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          fadeInDuration: 
          Duration(milliseconds: 200), 
          image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d2bf5e25-b0f9-4313-983f-77be1230915a/dbg9v9p-473a73cb-8c87-47d7-8a0f-146a42442a38.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvZDJiZjVlMjUtYjBmOS00MzEzLTk4M2YtNzdiZTEyMzA5MTVhXC9kYmc5djlwLTQ3M2E3M2NiLThjODctNDdkNy04YTBmLTE0NmE0MjQ0MmEzOC5qcGcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.BAc1nSgxnGj2HLXLZC74uGEiPrWz4bTpgBHlwiyZ5oo')),
      ),
      floatingActionButton: FloatingActionButton( 
        child: Icon(Icons.arrow_back_sharp),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}