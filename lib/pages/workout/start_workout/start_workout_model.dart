import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'start_workout_widget.dart' show StartWorkoutWidget;
import 'package:flutter/material.dart';

class StartWorkoutModel extends FlutterFlowModel<StartWorkoutWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  // State field(s) for workoutNotes widget.
  FocusNode? workoutNotesFocusNode;
  TextEditingController? workoutNotesTextController;
  String? Function(BuildContext, String?)? workoutNotesTextControllerValidator;
  // State field(s) for weight widget.
  FocusNode? weightFocusNode;
  TextEditingController? weightTextController;
  String? Function(BuildContext, String?)? weightTextControllerValidator;
  // State field(s) for reps widget.
  FocusNode? repsFocusNode;
  TextEditingController? repsTextController;
  String? Function(BuildContext, String?)? repsTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  Completer<List<ExercisesRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
    workoutNotesFocusNode?.dispose();
    workoutNotesTextController?.dispose();

    weightFocusNode?.dispose();
    weightTextController?.dispose();

    repsFocusNode?.dispose();
    repsTextController?.dispose();
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
