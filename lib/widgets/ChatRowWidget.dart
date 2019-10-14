import 'package:flutter/material.dart';
import 'package:messio_chat/config/Assets.dart';
import 'package:messio_chat/config/Styles.dart';

class ChatRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15,5,0,5),
      child: Row(children: <Widget>[
       Expanded(
       flex: 8,
       child: Row(
         mainAxisSize: MainAxisSize.max,
         children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundImage: Image.asset(
              Assets.user
            ).image
          ) ,
           SizedBox(width: 15),
           Container(
             child: Column(children: <Widget>[
               Text('John Doe', style: Styles.subHeadingLight),
               Text('What\'s up?', style: Styles.textLight)
             ]))
         ])) ,
        Expanded(
          flex: 2,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             Text('1399/02/06', style: Styles.numberPickerHeading)
            ]),
        )
      ]),
    );
  }

}