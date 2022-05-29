import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final list;

  const TextWidget({Key? key, required this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const ClampingScrollPhysics(), // new

        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (ctx, i) => SelectableText(
              "\t 👉 \t\t" + list[i],
              cursorColor: Colors.blueAccent,
              style: const TextStyle(fontSize: 18),
            ));
  }
}
