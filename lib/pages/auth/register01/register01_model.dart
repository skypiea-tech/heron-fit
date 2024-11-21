import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register01_widget.dart' show Register01Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Register01Model extends FlutterFlowModel<Register01Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for chooseGender widget.
  String? chooseGenderValue;
  FormFieldController<String>? chooseGenderValueController;
  DateTime? datePicked1;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode;
  TextEditingController? dateOfBirthTextController;
  final dateOfBirthMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthTextControllerValidator;
  DateTime? datePicked2;
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
    dateOfBirthFocusNode?.dispose();
    dateOfBirthTextController?.dispose();

    yourHeightFocusNode?.dispose();
    yourHeightTextController?.dispose();

    yourWeightFocusNode?.dispose();
    yourWeightTextController?.dispose();
  }
}
