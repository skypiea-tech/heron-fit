import '/flutter_flow/flutter_flow_util.dart';
import 'start_new_empty_workout_widget.dart' show StartNewEmptyWorkoutWidget;
import 'package:flutter/material.dart';

class StartNewEmptyWorkoutModel
    extends FlutterFlowModel<StartNewEmptyWorkoutWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
