import 'dart:convert';
import 'package:flutter_application_sptifymusic/model/spotifym.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_sptifymusic/offline.dart';
import 'package:http/http.dart' as http;

import 'Livedepartment.dart';

class Live extends StatefulWidget {
  const Live({Key? key}) : super(key: key);

  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // Example? ex1;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
    // Apicall();
  }

  // Apicall() async {
  //   var resp = await http.get(Uri.parse(
  //       "https://v1.nocodeapi.com/nikhil250/spotify/FcHXqqjQlvtgxUcC/myPlaylists"));
  //   print("resp is-->${resp.body}");
  //   var arr = jsonDecode(resp.body);
  //   Example ss = Example.fromJson(arr);
  //   print(ss.items?[0].description);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Center(
              child: Text(
                "Sp0tify",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        centerTitle: true,
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              child: Text("Live",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            Tab(
              child: Text("Offline",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ],
        ),
        backgroundColor: Color(0XFF06074F),
      ),
      body: TabBarView(
          controller: _tabController,
          children: <Widget>[Liveex(), Offlineex()]),
    );
  }
}
