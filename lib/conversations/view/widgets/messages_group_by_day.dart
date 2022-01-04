import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../widgets/keyboard_placeholder.dart';
import '../../models/messages_group_by_date_model.dart';
import '../../providers/conversation_provider.dart';
import '../../providers/conversation_state.dart';
import 'same_day_messages_list.dart';

class MessagesGroupedByDate extends HookConsumerWidget {
  const MessagesGroupedByDate({
    Key? key,
    required this.groupedMessages,
    required this.chatId,
    required this.scrollController,
    required this.inputWidgeSizeNotifier,
  }) : super(key: key);

  final List<GroupedMessages> groupedMessages;
  final String chatId;
  final ScrollController scrollController;
  final ValueNotifier<Size> inputWidgeSizeNotifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ConversationState>(
      conversationStateNotifierProvider(chatId),
      (_, next) => next.whenOrNull(
        newMessagesEvent: (_) => HapticFeedback.lightImpact(),
      ),
    );
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      itemCount: groupedMessages.length + 1,
      reverse: true,
      controller: scrollController,
      itemBuilder: (_, i) {
        if (i == 0) {
          return InputPlaceholder(
            inputWidgeSizeNotifier: inputWidgeSizeNotifier,
          );
        }
        final group = groupedMessages[i - 1];
        return SameDayMessagesList(
          group: group,
          chatId: chatId,
          key: Key(
            group.date.toString(),
          ),
        );
      },
    );
  }
}

class InputPlaceholder extends HookWidget {
  const InputPlaceholder({Key? key, required this.inputWidgeSizeNotifier})
      : super(key: key);

  final ValueNotifier<Size> inputWidgeSizeNotifier;

  @override
  Widget build(BuildContext context) {
    final height = useValueListenable(inputWidgeSizeNotifier);

    return Container(
      height: height.height,
    );
  }
}
