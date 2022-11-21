import 'package:splashscreen/modules/peoplemodules.dart';

class Message {
  People sender;
  String time;
  String text;

  Message({
    required this.sender,
    required this.time,
    required this.text,
  });
}

List<Message> messagescreen = [
  Message(
      sender: currentUser, time:"10:20am", text: "Hey! what's good?"),
  Message(sender: nick, time:"11:00am", text: "I'm doing great boss"),
  Message(sender: filip, time:"1:30pm", text: "Are you still coming?"),
  Message(sender: alex, time:"3:12pm", text: "Congratulations sir"),
  Message(sender: teejay,time:"7:00am",text: "I won't be coming to class today boss"),
  Message(sender: kay, time:"7:40am", text: "Are you still coming?"),
  Message(sender: yamex,time:"9:00pm",text: "There won't be class nextweek"),
];

List<Message> chatscreen = [
  Message(sender: teejay, time:"10:43am", text: "I sent you 20 Million yesterday night"),
  Message(sender: currentUser, time:"11:43am", text: "Why are you so stupid!!!"),
  Message(sender: teejay, time:"12:43am", text: "OMO!!! sapa is real oooo"),
  Message(sender: currentUser, time:"1:43am", text: "How far, the babe later show?"),
  Message(sender: teejay, time:"2:43am", text: "Walai that babe don later serve me breakfast"),
  Message(sender: currentUser, time:"3:43am", text: "Lover boy"),
];
