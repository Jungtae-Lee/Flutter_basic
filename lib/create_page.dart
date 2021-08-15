import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditinigController = TextEditingController();

  File? _image;
  final picker = ImagePicker();

  @override
  void dispose() {
    textEditinigController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.send),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        _image == null ? Text('No Image') : Image.file(_image!),
        TextField(
          decoration: InputDecoration(hintText: '내용을 입력하세요'),
          controller: textEditinigController,
        )
      ],
    );
  }

  Future _getImage() async {
    var image = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }
}
