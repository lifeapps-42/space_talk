import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_control_zone_controller.freezed.dart';

@freezed
class MessageInputState with _$MessageInputState {
  const factory MessageInputState.inactive() = MessageInputInactiveState;
  const factory MessageInputState.typing() = MessageInputTypingState;
  const factory MessageInputState.dismissing(DismissingStateData data) =
      MessageInputDismissingState;

  const factory MessageInputState.closingWithAnimationEvent() =
      MessageInputClosingWithAnimationEvent;
  const factory MessageInputState.unfocusEvent() = MessageInputUnfocusEvent;
  const factory MessageInputState.requestFocusEvent() =
      MessageInputRequestFocusEvent;
}

@freezed
class DismissingStateData with _$DismissingStateData {
  const DismissingStateData._();
  const factory DismissingStateData({
    required double startLocalPosition,
    required double startPosition,
    required double currentPosition,
  }) = _DismissingStateData;

  double get delta => currentPosition - startPosition;
}

final inputControlZoneController =
    StateNotifierProvider<InpitControlZoneController, MessageInputState>(
        (_) => InpitControlZoneController());

class InpitControlZoneController extends StateNotifier<MessageInputState> {
  InpitControlZoneController() : 
  super(const MessageInputInactiveState());

  void requestFocus() {
    state.whenOrNull(
      inactive: () {
        state = const MessageInputRequestFocusEvent();
        state = const MessageInputTypingState();
      },
    );
  }

  void typingStarted() {
    state.whenOrNull(
      inactive: () => state = const MessageInputTypingState(),
    );
  }

  void focusLost() {
    state.whenOrNull(
      typing: () => state = const MessageInputInactiveState(),
    );
  }

  void startDrag(DragStartDetails gestureDetails) {
    state.whenOrNull(
      typing: () {
        final position = gestureDetails.globalPosition.dy;
        final stateData = DismissingStateData(
          startLocalPosition: gestureDetails.localPosition.dy,
          startPosition: position,
          currentPosition: position,
        );
        state = MessageInputDismissingState(stateData);
      },
    );
  }

  void updateDrag(DragUpdateDetails gestureDetails) {
    state.whenOrNull(
      dismissing: (prevData) {
        final position = gestureDetails.globalPosition.dy;
        final stateData = prevData.copyWith(
          currentPosition: position.clamp(prevData.startPosition, 20000.0),
        );
        if (stateData.delta > 20) {
          state = const MessageInputUnfocusEvent();
        } else {
          state = const MessageInputRequestFocusEvent();
        }
        state = MessageInputDismissingState(stateData);
      },
    );
  }

  void endDrag(DragEndDetails? _) {
    state.whenOrNull(
      dismissing: (prevData) {
        if (prevData.delta > 20) {
          state = const MessageInputClosingWithAnimationEvent();
        } else {
          state = const MessageInputTypingState();
        }
      },
    );
  }

  void inputClosedAfterAnimation() {
    state = const MessageInputInactiveState();
  }
}
