import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  Contacts(
      {Key? key,
      required this.contactImage,
      required this.contactNick,
      required this.contactLastMessage,
      this.message})
      : super(key: key);
  final AssetImage contactImage;
  final String contactNick;
  final String contactLastMessage;
  final int? message;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BorderDirectional(
            bottom: BorderSide(width: 0.1, color: Colors.black54)),
      ),
      width: double.infinity,
      height: 73,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: contactImage,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$contactNick",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),

                Text(
                  "$contactLastMessage",
                  style: TextStyle(color: Colors.black38),
                ),
              ],
            ),
          ),
          if(message!=null)Expanded(
            flex: 1,
            child: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 10,
              child: Text(
                "$message",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )else if(message==null)Expanded(
              flex: 1,
              child: CircleAvatar(radius: 10,backgroundColor: Colors.transparent,))
        ],
      ),
    );
  }
}
