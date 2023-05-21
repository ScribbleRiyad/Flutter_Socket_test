import 'dart:html';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen
  ({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController messageInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded( flex: 9, child: Container(),),
            Expanded( flex: 9, child: Container(
              color: Colors.red,
              child: TextField(
                controller: messageInputController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),),
        ],
      ),
    );
  }
}