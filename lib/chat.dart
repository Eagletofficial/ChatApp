import 'package:flutter/material.dart';
import 'package:splashscreen/chatpage.dart';

import 'modules/messeage_modules.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Requests',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/white2.jpg'),
                          radius: 37,
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/white3.jpg'),
                          radius: 37,
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/white4.jpg'),
                          radius: 37,
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/white9.jpg'),
                          radius: 37,
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/white5.jpg'),
                          radius: 37,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Messages',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // const SizedBox(height: 10),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: messagescreen.length,
                  itemBuilder: (BuildContext context, int index) {
                    Message chat = messagescreen[index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ChatPage(user: chat.sender)));
                        },
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(chat.sender.profilepicture),
                              radius: 37,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    // color: Colors.blue,
                                    child: Row(
                                      children: [
                                        Text(
                                          chat.sender.name,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const Spacer(
                                          flex: 2,
                                        ),
                                        Text(
                                          chat.time,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        // color: Colors.red,
                                        child: Text(
                                          chat.text,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
