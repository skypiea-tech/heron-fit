import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'customize_workout_widget.dart' show CustomizeWorkoutWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class CustomizeWorkoutModel extends FlutterFlowModel<CustomizeWorkoutWidget> {
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

  // State field(s) for workoutNotes widget.
  FocusNode? workoutNotesFocusNode;
  TextEditingController? workoutNotesTextController;
  String? Function(BuildContext, String?)? workoutNotesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    workoutDurationController.dispose();
    workoutNotesFocusNode?.dispose();
    workoutNotesTextController?.dispose();
  }
}
