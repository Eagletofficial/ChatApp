import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:splashscreen/modules/messeage_modules.dart';
import 'package:splashscreen/modules/peoplemodules.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key, required this.user}) : super(key: key);
  final People user;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  chatflow(Message chat, bool isSentByMe) {
    if (isSentByMe) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              constraints: const BoxConstraints(
                maxWidth: 250,
                maxHeight: 100,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(chat.text),
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              constraints: const BoxConstraints(
                maxWidth: 250,
                maxHeight: 100,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(15.0), child: Text(chat.text)),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios,
                          color: Colors.white)),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/white5.jpg'),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Monica",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  const Icon(Icons.call, color: Colors.white),
                  const SizedBox(width: 10),
                  const Icon(Icons.video_call, color: Colors.white),
                  const SizedBox(width: 10),
                  const Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Monica requests permission to make video\nand audio calls with you.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'Decline',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Accept',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatscreen.length,
                itemBuilder: (BuildContext context, int index) {
                  Message chat = chatscreen[index];
                  bool isSentByMe = chat.sender.id == currentUser.id;
                  return chatflow(chat, isSentByMe);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.send, color: Colors.white),
                  prefixIcon:
                      const Icon(Icons.emoji_emotions, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
