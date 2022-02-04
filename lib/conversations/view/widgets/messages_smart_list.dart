import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../messages/models/message.dart';
import '../../models/messages_group_by_date_model.dart';
import '../../providers/conversation_provider.dart';
import 'date_label.dart';
import 'message_bubble.dart';
import 'messages_group_by_day.dart';

class MessagesSmartList extends HookWidget {
  const MessagesSmartList({
    Key? key,
    required this.chatId,
    required this.groupedMessages,
    required this.messages
  }) : super(key: key);

  final String chatId;
  final List<GroupedMessages> groupedMessages;
  final List<Message> messages;
  @override
  Widget build(BuildContext context) {
    print('LIST');
    List<Object> _listStructure(List<GroupedMessages> groupedMessages) {
      return [
        'inputPlaceholder',
        for (final group in groupedMessages) ...[...group.messages, group.date],
      ];
    }
    late final structure = _listStructure(groupedMessages);
    return ListView.builder(
      itemBuilder: (BuildContext context, int i) {
        late final element = structure[i];
        if (element is String) {
          return const InputPlaceholder(
            key: SmartListPlaceholderKey(),
          );
        }
        if (element is Message) {
          final message = messages.firstWhere((m) => m.id == element.id);
          return 
          // ProviderScope(
          //   key: SmartListMessageKey(element.id ?? ''),
          //   overrides: [
          //     singleMessageProvider.overrideWithValue(message),
          //   ],
            // child: 
            MessageBubble(message: message, key: Key(message.id ?? message.text),);
          // );
        }
        if (element is DateTime) {
          return DateLabel(
            key: SmartListDateLabelKey(element),
            date: element,
          );
        }
        throw 'element is ${element.runtimeType}';
      },
      // childCount: structure.length,
      itemCount: structure.length,
      // addAutomaticKeepAlives: false,
      // addRepaintBoundaries: false,
      // findChildIndexCallback: (key) {
      //   key as SmartListStructureKey;
      //   return structure.indexWhere(key.indicateStructureElement);
      // },
      // ),
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      reverse: true,
    );
  }
}

// class BubblesBuilderDelegate extends SliverChildBuilderDelegate {
//   BubblesBuilderDelegate._(
//     NullableIndexedWidgetBuilder builder,
//     int childCount,
//     int? Function(Key) findIndexByKey,
//   ) : super(
//           builder,
//           childCount: childCount,
//           findChildIndexCallback: findIndexByKey,
//         );

//   factory BubblesBuilderDelegate({
//     required List<GroupedMessages> groupedMessages,
//   }) {
//     late final structure = _listStructure(groupedMessages);
//     Widget? builder(BuildContext context, int i) {
//       late final element = structure[i];
//       if (element is String) {
//         return const InputPlaceholder(
//           key: SmartListPlaceholderKey(),
//         );
//       }
//       if (element is Message) {
//         return ProviderScope(
//           key: SmartListMessageKey(element.id ?? ''),
//           overrides: [
//             singleMessageProvider.overrideWithValue(element),
//           ],
//           child: const MessageBubble(),
//         );
//       }
//       if (element is DateTime) {
//         return DateLabel(
//           key: SmartListDateLabelKey(element),
//           date: element,
//         );
//       }
//     }

//     int? findIndexByKey(Key key) {
//       key as SmartListStructureKey;
//       return structure.indexWhere(key.indicateStructureElement);
//     }

//     return BubblesBuilderDelegate._(
//       builder,
//       structure.length,
//       findIndexByKey,
//     );
//   }

//   // static const _indexOffset = 1;

//   static List<Object> _listStructure(List<GroupedMessages> groupedMessages) {
//     return [
//       'inputPlaceholder',
//       for (final group in groupedMessages) ...[...group.messages, group.date],
//     ];
//   }
// }

abstract class SmartListStructureKey extends LocalKey {
  Object get identifier;
  bool indicateStructureElement(Object element);
}

class SmartListPlaceholderKey implements SmartListStructureKey {
  const SmartListPlaceholderKey();
  @override
  String get identifier => 'inputPlaceholder';

  @override
  bool indicateStructureElement(Object element) {
    return element is String && element == identifier;
  }
}

class SmartListMessageKey implements SmartListStructureKey {
  const SmartListMessageKey(this.messageId);
  final String messageId;
  @override
  String get identifier => messageId;

  @override
  bool indicateStructureElement(Object element) {
    return element is Message && element.id == identifier;
  }
}

class SmartListDateLabelKey implements SmartListStructureKey {
  const SmartListDateLabelKey(this.date);
  final DateTime date;
  @override
  DateTime get identifier => date;

  @override
  bool indicateStructureElement(Object element) {
    return element is DateTime && element.isAtSameMomentAs(identifier);
  }
}
