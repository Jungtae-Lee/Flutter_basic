import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.create),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget _buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1.0, mainAxisSpacing: 1.0, crossAxisSpacing: 1.0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildListItem(context, index);
        });
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Image.network('http://image.munhwa.com/gen_news/202108/2021081301031939321001_b.jpg?v=20210813204819', fit: BoxFit.cover);
  }
}
