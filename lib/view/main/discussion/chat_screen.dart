// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Diskusi Soal"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
              // ignore: avoid_unnecessary_containers
              return Container(
                child: Column(children: [
                  const Text("Nama User"),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: const Text("Pesan"),
                  ),
                  const Text("Waktu Kirim"),
                ]),
              );
            }),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: (() {}),
                  ),
                  Container(
                    child: Row(
                      children: [
                        const Expanded(child: TextField()),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: (() {}),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: (() {}),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
