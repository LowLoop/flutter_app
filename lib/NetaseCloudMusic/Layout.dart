import 'package:flutter/material.dart';
import 'dart:async';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Layout extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LayoutState();
  }
}

class LayoutState extends State<Layout> with SingleTickerProviderStateMixin {
  // List tabBarList = ['个性推荐', '主播电台'];
  List<Tab> appButtomTabBarList = [
    new Tab(
      text: '主页',
      icon: new Icon(Icons.queue_music),
    ),
    new Tab(
      text: '我的',
      icon: new Icon(Icons.account_circle),
    ),
    new Tab(
      text: '账号',
      icon: new Icon(Icons.album),
    )
  ];
  TabController  appBottomTabController;

  bool like = false;
  int likeCount = 0;
  Text appBarTitle = new Text('首页');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.appBottomTabController = new TabController(
      length: appButtomTabBarList.length,
      vsync: this,
      initialIndex: 0
    );
  }

  void onLike () {
    setState(() {
      like = !like;
      if (likeCount == 0) {
        likeCount = this.like ? likeCount + 1 : 0;
      } else {
        likeCount = this.like ? likeCount + 1 : likeCount - 1;
      }
    });
  }

  void onClickBottomTab (index) {
    switch (index) {
      case 0:
        this.appBarTitle = new Text('首页');
        break;
      case 1:
        this.appBarTitle = new Text('我的');
        break;
      case 2:
        this.appBarTitle = new Text('账号');
        break;
      default:
        break;
    }
  }

  Image getImgTitle () {
    return new Image(
      // image: new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537009339303&di=388e448c4703597be3a08f83d2c58b4f&imgtype=0&src=http%3A%2F%2Fwenwen.soso.com%2Fp%2F20100705%2F20100705183232-2110348634.jpg'),
      image: new AssetImage('lib/assets/test.png'),
      height: 300.0,
      fit: BoxFit.cover
    );
  }

  Container getTextTitle () {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Row(
        children: <Widget>[
          new Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child:new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text('我是第一行'),
                new Text('我是第二行')
              ],
            )
          ),
          new IconButton(
            padding: EdgeInsets.all(0.0),
            icon: new Icon(
              this.like ? Icons.star : Icons.star_border,
              color: Colors.pinkAccent[200]
            ),
            onPressed: () => this.onLike()
          ),
          new Text(this.likeCount.toString())
        ]
      )
    );
  }

  Container getButtonTitle () {
    return new Container(
      padding: EdgeInsets.all(30.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Icon(Icons.call),
              new Text('CALL')
            ]
          ),
          new Column(
            children: <Widget>[
              new Icon(Icons.call),
              new Text('CALL')
            ]
          ),
          new Column(
            children: <Widget>[
              new Icon(Icons.call),
              new Text('CALL')
            ]
          )
        ],
      ),
    );
  }

  Container getTextBody () {
    return new Container(
      padding: EdgeInsets.all(20.0),
      child: new Text(
        '我是文字问子，我是文字问子，我是文字问子，我是文字问子，我是文字问子，我是文字问子，我是文字问子，我是文字问子，',
        style: new TextStyle(color: Colors.pinkAccent)),
    );
  }

  PopupMenuItem<String> getMenuItem (IconData icon, String text, String id) {
    return new PopupMenuItem<String>(
      value: id,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Icon(icon, color: Colors.pinkAccent),
          new Text(text)
        ],
      )
    );
  }

  Container getIndexView () {
    return new Container(
      // padding: new EdgeInsets.only(top: 10.0),
      // color: const Color.fromRGBO(94, 196, 154, 1.0),
      color: const Color(0xfffcfcfc),
      child: new ListView(
        children: <Widget>[
          getImgTitle(),
          getTextTitle(),
          getButtonTitle(),
          getTextBody()
        ],
      )
    );
  }

  Container getOtherView (text) {
    return new Container(
      child: new Center(
        child: new Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.star, color: Colors.pinkAccent,),
        title: appBarTitle,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.radio_button_checked), onPressed: () => print('咦，我被点击了诶')),
          new PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              getMenuItem(Icons.room, 'room', '1'),
              getMenuItem(Icons.room_service, 'roomService', '2'),
              getMenuItem(Icons.router, 'router', '3')
            ]
          )
        ],
      ),
      body: new TabBarView(
        controller: this.appBottomTabController,
        children: [
          getIndexView(),
          getOtherView('我是第二'),
          getOtherView('老三来也')
        ]
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () => print('是谁点击了本座')
      ),
      bottomNavigationBar: new Material(
        child: new TabBar(
          indicatorColor: Colors.white,
          controller: this.appBottomTabController,
          tabs: appButtomTabBarList
        ),
      ),
    );
  }
}


/*
,
            child: new Column(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(icon: new Icon(Icons.queue_music)),
                ),
                new TabBar(
                  labelColor: Color.fromRGBO(255, 255, 255, 1.0),
                  indicatorColor: Color.fromRGBO(205, 203, 206, 1.0),
                  isScrollable: true,
                  tabs: tabBarList_two
                ),
                /*new TabBarView(
                  children: null
                )*/
              ]
            )
 */