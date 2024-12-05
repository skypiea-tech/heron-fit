import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/modals/set_row/set_row_widget.dart';
import 'dart:async';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'start_new_workout_widget.dart' show StartNewWorkoutWidget;
import 'package:flutter/material.dart';

class StartNewWorkoutModel extends FlutterFlowModel<StartNewWorkoutWidget> {
  ///  Local state fields for this page.

  int currentSetNumber = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for workoutDuration widget.
  final workoutDurationInitialTimeMs = 0;
  int workoutDurationMilliseconds = 0;
  String workoutDurationValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController workoutDurationController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  // Models for setRow dynamic component.
  late FlutterFlowDynamicModels<SetRowModel> setRowModels;
  Completer<List<WorkoutExercisesRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    setRowModels = FlutterFlowDynamicModels(() => SetRowModel());
  }

  @override
  void dispose() {
    workoutDurationController.dispose();
    setRowModels.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
