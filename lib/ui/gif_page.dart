import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  final Map _gitPage;

  GifPage(this._gitPage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              print(_gitPage["images"]["fixed_height"]["url"]);
              Share.share(_gitPage["images"]["fixed_height"]["url"]);
            },
          ),
        ],
        title: Text(
          _gitPage["title"]
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Image.network(_gitPage["images"]["fixed_height"]["url"]),
      ),
      backgroundColor: Colors.black,
    );
  }
}
