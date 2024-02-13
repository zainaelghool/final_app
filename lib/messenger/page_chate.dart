import 'package:app_final/text/text_bold.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({super.key});

  @override
  _MessengerScreenState createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  List<String> messages = [];
  TextEditingController messageController = TextEditingController();

  void sendMessage() {
    String message = messageController.text;
    setState(() {
      messages.add(message);
      messageController.clear();
    });
  }

  List<String> get getMessages => messages;

  TextEditingController get getMessageController => messageController;

  set setMessages(List<String> newValue) {
    messages = newValue;
  }

  set setMessageController(TextEditingController newValue) {
    messageController = newValue;
  }

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text_bold(
          hitex: 'Messenger',
          st: 20,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 0, 0, 86),
                      child: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 243, 243, 244),
                      ),
                    ),
                    title: text_bold(
                      hitex: 'Contact $index',
                      st: 12,
                    ),
                    subtitle: text_bold(
                      hitex: messages[index],
                      st: 17,
                    ),
                    trailing: text_bold(
                      hitex: '12:34 PM',
                      st: 12,
                    ),
                  );
                },
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        hintText: 'Type a message...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(
                      Icons.send,
                      color: Color.fromARGB(255, 0, 0, 86),
                    ),
                    onPressed: () {
                      sendMessage();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
