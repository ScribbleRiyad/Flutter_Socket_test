
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
            Expanded( child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: messageInputController,
                  decoration: InputDecoration(
              
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.only(right:5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.blue,

                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.send, color: Colors.white,)),


                    ),
                  ),
                ),
              ),
            ),),
        ],
      ),
    );
  }
}