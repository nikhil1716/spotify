import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model/spotifym.dart';

class Liveex extends StatefulWidget {
  const Liveex({Key? key}) : super(key: key);

  @override
  _LiveexState createState() => _LiveexState();
}

class _LiveexState extends State<Liveex> {
  var arr = [];
  List<Example> contactArr = [];
  // List<Example> ss = [];
  List<Example>? arr1 = [];
  void initState() {
    // TODO: implement initState

    super.initState();
    Apicall();
  }

  Apicall() async {
    var resp = await http.get(Uri.parse(
        "https://v1.nocodeapi.com/nikhil250/spotify/FcHXqqjQlvtgxUcC/myPlaylists"));
    print("resp is-->${resp.body}");
    setState(() {
      // arr = jsonDecode(resp.body);
      // Example ss = Example.fromJson(arr);
      // print(ss.items?[0].description);

      Map<String, dynamic> jsonResp = json.decode(resp.body);

      Example response = Example.fromJson(jsonResp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(),
              );
            },
            // separatorBuilder: (context, index) {
            //   return Divider();
            // },
            itemCount: contactArr.length),
      ),
    );
  }
}
