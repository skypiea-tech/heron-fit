import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register01_widget.dart' show Register01Widget;
import 'package:flutter/material.dart';

class Register01Model extends FlutterFlowModel<Register01Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for chooseGender widget.
  String? chooseGenderValue;
  FormFieldController<String>? chooseGenderValueController;
  DateTime? datePicked;
  // State field(s) for yourHeight widget.
  FocusNode? yourHeightFocusNode;
  TextEditingController? yourHeightTextController;
  String? Function(BuildContext, String?)? yourHeightTextControllerValidator;
  // State field(s) for yourWeight widget.
  FocusNode? yourWeightFocusNode;
  TextEditingController? yourWeightTextController;
  String? Function(BuildContext, String?)? yourWeightTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourHeightFocusNode?.dispose();
    yourHeightTextController?.dispose();

    yourWeightFocusNode?.dispose();
    yourWeightTextController?.dispose();
  }
}
