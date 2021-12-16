import 'package:flutter/material.dart';

class LifecycleHandler extends StatefulWidget{
  const LifecycleHandler({ Key? key, required this.onStateChanged, required this.child }) : super(key: key);

  final void Function(AppLifecycleState) onStateChanged;
  final Widget child;

  @override
  _LifecycleHandlerState createState() => _LifecycleHandlerState();
}

class _LifecycleHandlerState extends State<LifecycleHandler> with WidgetsBindingObserver{

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
     WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
   widget.onStateChanged(state);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}