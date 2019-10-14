import 'package:flutter/material.dart';
import 'package:messio_chat/config/Palette.dart';
import 'package:messio_chat/widgets/ChatAppBar.dart';
import 'package:messio_chat/widgets/ChatListWidget.dart';
import 'package:messio_chat/widgets/InputWidget.dart';

import 'ConversationPageSlide.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();

  const ConversationPage();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(flex: 2, child: ChatAppBar()), // Custom app bar for chat screen
      Expanded(
          flex: 11,
          child: Container(
            color: Palette.otherMessageBackgroundColor,
            child: Column(children: <Widget>[
              ChatListWidget(),
            ]),
          )),
      Expanded(flex: 2, child: ConversationPageSlide()), // Custom app bar for chat screen
    ]);
  }
}
