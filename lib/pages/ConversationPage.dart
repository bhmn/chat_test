import 'package:flutter/material.dart';
import 'package:messio_chat/widgets/ChatAppBar.dart';
import 'package:messio_chat/widgets/ChatListWidget.dart';
import 'package:messio_chat/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget{
  @override
  _ConversationPageSate createState() => _ConversationPageSate();

}

class _ConversationPageSate extends State<ConversationPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: ChatAppBar(),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(),
                InputWidegt()
              ],
            )
          ],
        ),
      ),
    );
  }

}
