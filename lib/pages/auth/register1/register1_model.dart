import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register1_widget.dart' show Register1Widget;
import 'package:flutter/material.dart';

class Register1Model extends FlutterFlowModel<Register1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for chooseGender widget.
  String? chooseGenderValue;
  FormFieldController<String>? chooseGenderValueController;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode;
  TextEditingController? dateOfBirthTextController;
  String? Function(BuildContext, String?)? dateOfBirthTextControllerValidator;
  // State field(s) for yourHeight widget.
  FocusNode? yourHeightFocusNode;
  TextEditingController? yourHeightTextController;
  String? Function(BuildContext, String?)? yourHeightTextControllerValidator;
  // State field(s) for yourWeight widget.
  FocusNode? yourWeightFocusNode;
  TextEditingController? yourWeightTextController;
  String? Function(BuildContext, String?)? yourWeightTextControllerValidator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

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
