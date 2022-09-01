import 'package:flutter/material.dart';

import '../chatusers.dart';
import '../convlist.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> ChatUser = [
    ChatUsers(
        name: "Sam ",
        messageText: "GOD save our instructor",
        imageURL:
            "https://images.unsplash.com/photo-1600804889194-e6fbf08ddb39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y29vbCUyMGd1eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        time: "Yesterday"),
    ChatUsers(
        name: "Alice",
        messageText: "I wish i be in 2020 .. ",
        imageURL:
            "https://media.istockphoto.com/photos/smiling-girl-playing-on-the-swing-picture-id1252210017?k=20&m=1252210017&s=612x612&w=0&h=6wJls0WsyEzF_heiXJQ8p89a3ECeoqxU42WXOMJx6VU=",
        time: "21 August"),
    ChatUsers(
        name: "Jacob",
        messageText: "I'm busy right now , you can contact me later..  ",
        imageURL:
            "data:image/jpeg;base64,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",
        time: "today"),
    ChatUsers(
        name: "Harry ",
        messageText: "Thankyou, It's the best thing i've seen for long time ..",
        imageURL:
            "https://th.bing.com/th/id/R.db9031f206909566c82036a776f7b4d0?rik=lteOWaPuoRq%2bow&riu=http%3a%2f%2fnaibuzz.com%2fwp-content%2fuploads%2f2016%2f08%2fJacob.jpg&ehk=YEh7vuRbuQ94wSsfE1csQ84Dy9wxrFEvGEK9PdlfBPA%3d&risl=&pid=ImgRaw&r=0",
        time: "morning yesterday"),
    ChatUsers(
        name: "Sara ",
        messageText: "I'm hungry now , let's order something to eat .. ",
        imageURL:
            "https://images.unsplash.com/photo-1551648289-51cbfd636ce9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8eW91bmclMjBnaXJsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        time: "18 Aug"),
    ChatUsers(
        name: "Mariam",
        messageText: "I'm interested in a cash offer for my property",
        imageURL:
            "https://media.istockphoto.com/photos/smiling-girl-playing-on-the-swing-picture-id1252210017?k=20&m=1252210017&s=612x612&w=0&h=6wJls0WsyEzF_heiXJQ8p89a3ECeoqxU42WXOMJx6VU=",
        time: "Last year"),
    ChatUsers(
        name: "Bob",
        messageText: "When the last time you are upset then ? ",
        imageURL:
            "https://images.unsplash.com/photo-1600804889194-e6fbf08ddb39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y29vbCUyMGd1eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        time: "now"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Chats",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 0, left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey.shade100)),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 0, left: 16, right: 16),
                child: ListView.builder(
                  itemCount: ChatUser.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ConversationList(
                      name: ChatUser[index].name,
                      messageText: ChatUser[index].messageText,
                      imageUrl: ChatUser[index].imageURL,
                      time: ChatUser[index].time,
                      isMessageRead: (index == 0 || index == 3) ? true : false,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}