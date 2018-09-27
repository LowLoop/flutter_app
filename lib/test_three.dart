import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        title: '这是title',
        home: new DemoHome(),
        // home: new MyScaffold(),
      )
  );
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      title: new Text('这是个title'),
    );
    /*return new Container(
      height: 80.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.pink[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.menu), onPressed: null, tooltip: 'Navigation menu'),
          new Expanded(
            child: title,
          ),
          new IconButton(icon: new Icon(Icons.search), onPressed: null, tooltip: 'Search',)
        ],
      ),
    );*/
  }
}

class MyScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              '这是个title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Expanded(
              child: new Center(
                  child: new Text('牛呀仔')
              )
          )
        ],
      ),
    );
  }
}

class DemoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.menu), onPressed: null, tooltip: 'Navigation menu',),
        title: new Text('抱歉!我是bar\'title'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: null, tooltip: 'search',)
        ],
      ),
      body: new Center(
        child: new Text('i\'m a center text'),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: () {print('11111111111');}, child: new Icon(Icons.add), tooltip: 'add',),
    );
  }
}

class LowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {},
      child: new FloatingActionButton(onPressed: null, child: new Icon(Icons.edit), tooltip: 'edit',),
    );
  }
}