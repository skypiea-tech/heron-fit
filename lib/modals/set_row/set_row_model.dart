import '/flutter_flow/flutter_flow_util.dart';
import 'set_row_widget.dart' show SetRowWidget;
import 'package:flutter/material.dart';

class SetRowModel extends FlutterFlowModel<SetRowWidget> {
  ///  State fields for stateful widgets in this component.

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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    weightFocusNode?.dispose();
    weightTextController?.dispose();

    repsFocusNode?.dispose();
    repsTextController?.dispose();
  }
}
