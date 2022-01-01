import 'package:flutter/material.dart';

import '../ui_kit/colors.dart';
import '../user/models/user.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({ Key? key, required this.user }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      backgroundColor: TalkColors.main,
      foregroundColor: Colors.white,
      child: _NoPhoto(user: user,),
    );
  }
}

class _NoPhoto extends StatelessWidget {
  const _NoPhoto({ Key? key, required this.user }) : super(key: key);

  final User user;

   String _text(){
      final splitted = user.name.split(' ').take(2);
      if(splitted.length == 1) {
        return user.name[0].toUpperCase();
      } else {
        final list = splitted.toList();
        return '${list[0][0]}${list[1][0]}'.toUpperCase();
      }
    }

  @override
  Widget build(BuildContext context) {
   final text = _text();
    return Center(
      child: Text(text),
    );
  }
}