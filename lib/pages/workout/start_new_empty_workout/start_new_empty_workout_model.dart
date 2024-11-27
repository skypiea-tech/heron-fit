import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'start_new_empty_workout_widget.dart' show StartNewEmptyWorkoutWidget;
import 'package:flutter/material.dart';

class StartNewEmptyWorkoutModel
    extends FlutterFlowModel<StartNewEmptyWorkoutWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
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

  // State field(s) for workoutNotes widget.
  FocusNode? workoutNotesFocusNode;
  TextEditingController? workoutNotesTextController;
  String? Function(BuildContext, String?)? workoutNotesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    workoutDurationController.dispose();
    workoutNotesFocusNode?.dispose();
    workoutNotesTextController?.dispose();
  }
}
