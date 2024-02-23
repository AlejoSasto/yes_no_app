import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(20),
    );

    return TextFormField(
        decoration: InputDecoration(
      hintText: 'Escribe un mensaje...',
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(30),
      // ),
      enabledBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {},
      ),
    ));
  }
}
