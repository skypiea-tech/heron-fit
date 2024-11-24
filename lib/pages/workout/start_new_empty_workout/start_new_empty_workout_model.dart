import '/flutter_flow/flutter_flow_util.dart';
import 'start_new_empty_workout_widget.dart' show StartNewEmptyWorkoutWidget;
import 'package:flutter/material.dart';

class StartNewEmptyWorkoutModel
    extends FlutterFlowModel<StartNewEmptyWorkoutWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for workoutNotes widget.
  FocusNode? workoutNotesFocusNode;
  TextEditingController? workoutNotesTextController;
  String? Function(BuildContext, String?)? workoutNotesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    workoutNotesFocusNode?.dispose();
    workoutNotesTextController?.dispose();
  }
}
