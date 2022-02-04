// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../models/messages_group_by_date_model.dart';
// import '../../providers/conversation_provider.dart';
// import '../../providers/conversation_state.dart';
// import 'date_label.dart';
// import 'message_bubble.dart';

// class SameDayMessagesList extends HookConsumerWidget {
//   const SameDayMessagesList({
//     Key? key,
//     required this.group,
//     required this.chatId,
//   }) : super(key: key);

//   final GroupedMessages group;
//   final String chatId;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final listKey = useState(GlobalKey<AnimatedListState>());
//     ref.listen<ConversationState>(
//       conversationStateNotifierProvider(chatId),
//       (_, next) => next.whenOrNull(
//         newMessagesEvent: (locations) {
//           if (locations[group.date] == null) return;
//           final indexes = locations[group.date]!;
//           for (final i in indexes) {
//             listKey.value.currentState?.insertItem(
//               i,
//               duration: const Duration(milliseconds: 450),
//             );
//           }
//         },
//         removedMessagesEvent: (locations) {
//           if (locations[group.date] == null) return;
//           final indexes = locations[group.date]!;
//           for (final i in indexes) {
//             listKey.value.currentState?.removeItem(
//               i,
//               (_, animation) {
//                 final message = group.messages[i];
//                 return ProviderScope(
//                   overrides: [singleMessageProvider.overrideWithValue(message)],
//                   child: MessageBubble(
//                     message: message,
//                   ),
//                 );
//               },
//               duration: const Duration(milliseconds: 450),
//             );
//           }
//         },
//       ),
//     );
//     return AnimatedList(
//       key: listKey.value,
//       initialItemCount: group.messages.length + 1,
//       reverse: true,
//       shrinkWrap: true,
//       primary: false,
//       physics: const NeverScrollableScrollPhysics(),
//       itemBuilder: (_, i, animation) {
//         if (i == group.messages.length) {
//           return DateLabel(date: group.date);
//         }
//         final message = group.messages[i];
//         return ProviderScope(
//           key: Key(message.id ?? 'k'),
//           overrides: [singleMessageProvider.overrideWithValue(message)],
//           child: MessageBubble(message: message),
//         );
//       },
//     );
//   }
// }
