import '/flutter_flow/flutter_flow_util.dart';
import 'contact_us_widget.dart' show ContactUsWidget;
import 'package:flutter/material.dart';

class ContactUsModel extends FlutterFlowModel<ContactUsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for userFeedback widget.
  FocusNode? userFeedbackFocusNode;
  TextEditingController? userFeedbackTextController;
  String? Function(BuildContext, String?)? userFeedbackTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userFeedbackFocusNode?.dispose();
    userFeedbackTextController?.dispose();
  }
}
