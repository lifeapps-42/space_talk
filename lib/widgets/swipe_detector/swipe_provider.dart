import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'swipe_provider.freezed.dart';

@freezed
class SwipeState with _$SwipeState {
  const factory SwipeState.stop() = SwipeStopState;
  const factory SwipeState.inProgress(SwipeData data) = SwipeInProgressState;
  const factory SwipeState.doneEvent(SwipeData data) = SwipeDoneEvent;
}

@freezed
class SwipeData with _$SwipeData {
  const factory SwipeData({
    required double delta,
    required double start,
    required double crossAxisStart,
    required double crossAxisDelta,
  }) = _SwipeData;
}

final swipeProvider =
    StateNotifierProvider.autoDispose<SwipeProvider, SwipeState>(
        (_) => SwipeProvider());

class SwipeProvider extends StateNotifier<SwipeState> {
  SwipeProvider() : super(const SwipeStopState());

  void startDrag(DragStartDetails gestureDetails) {
    print('started');
    state.whenOrNull(stop: () {
      final stateData = SwipeData(
        start: gestureDetails.globalPosition.dx,
        crossAxisStart: gestureDetails.globalPosition.dy,
        delta: 0.0,
        crossAxisDelta: 0.0,
      );
      state = SwipeInProgressState(stateData);
    });
  }

  void updateDrag(DragUpdateDetails gestureDetails) {
    // print('called');
    // print(state);
    state.whenOrNull(
      inProgress: (prevData) {
        final delta = gestureDetails.globalPosition.dx - prevData.start;
        final crossAxisDelta =
            gestureDetails.globalPosition.dy - prevData.crossAxisStart;
        final stateData =
            prevData.copyWith(delta: delta, crossAxisDelta: crossAxisDelta);
        state = SwipeInProgressState(stateData);
        // print(stateData.delta);
      },
    );
  }

  void endDrag() {
    print('ended');
    state.whenOrNull(inProgress: (data) {
      state = SwipeDoneEvent(data);
      state = const SwipeStopState();
    });
  }
}
