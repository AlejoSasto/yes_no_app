import 'package:flutter/material.dart';

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
    );
  }
}
