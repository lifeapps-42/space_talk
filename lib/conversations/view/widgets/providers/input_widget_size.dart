import 'package:flutter_riverpod/flutter_riverpod.dart';

final inputWidgetSizeNotifierProvider = StateNotifierProvider<InputWidgetSizeNotifier, double>((_) => InputWidgetSizeNotifier());

class InputWidgetSizeNotifier extends StateNotifier<double> {
  InputWidgetSizeNotifier() : super(0.0);

  void set(double value) {
    state = value;
  }
}