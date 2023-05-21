
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
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Expanded( flex: 9, child: Container(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder:(context, index){
              
              return const MessageItem(
                sendByMe: true,
              );
            },),
          ),),
            Expanded( child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                ),
               
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
                        child: IconButton(onPressed: (){
                          sendMessage(
                            messageInputController.text,
                          );
                          messageInputController.text ="";
                        }, icon: const Icon(Icons.send, color: Colors.white,)),
            
            
                      ),
                    ),
                  ),
                ),
              ),
            ),),
        ],
      ),
    );
  }
  void sendMessage(String text){}
}
class MessageItem extends StatelessWidget {
  const MessageItem({
    Key? key,
    required this.sendByMe,
  }) : super(key: key);
 final bool sendByMe;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: sendByMe? Alignment.centerRight:Alignment.centerLeft,
      child: Container(
          color: sendByMe? Colors.purple: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal:10),
        margin: const EdgeInsets.symmetric(vertical: 3, horizontal:10) ,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Hello ",style: TextStyle(color: sendByMe?Colors.white:Colors.yellow),),
              Text("10.00 Am",style: TextStyle(color: sendByMe?Colors.white:Colors.yellow, fontSize: 12),),
          ],
        ),
      ),
    );
  }
}
