import 'package:flutter/material.dart';
import 'package:yes_no_app/config/presentation/widgets/chat/my_message_bubble.dart';

import '../../widgets/chat/her_message_bubble.dart';
import '../../widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn2.chicmagazine.com.mx/uploads/media/2021/07/13/megan-fox-foto-instagram-1.jpg'),
            ),
          ),
          title: const Text('Mi amor ❤️'),
          // centerTitle: true,
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),
            // Caja de texto de mensaje
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
