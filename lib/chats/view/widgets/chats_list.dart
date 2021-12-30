import 'package:flutter/material.dart';

import '../../models/chat_item.dart';
import 'chat_item_tile.dart';

class ChatsItemsList extends StatelessWidget {
  const ChatsItemsList({
    Key? key,
    required this.chats,
    required this.scrollController,
  }) : super(key: key);

  final List<ChatItem> chats;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: chats.length,
      itemBuilder: (context, i) => ChatItemTile(chat: chats[i]),
    );
  }
}
