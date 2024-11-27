import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_booking_widget.dart' show ConfirmBookingWidget;
import 'package:flutter/material.dart';

class ConfirmBookingModel extends FlutterFlowModel<ConfirmBookingWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for textfield_enterTicketID widget.
  FocusNode? textfieldEnterTicketIDFocusNode;
  TextEditingController? textfieldEnterTicketIDTextController;
  String? Function(BuildContext, String?)?
      textfieldEnterTicketIDTextControllerValidator;
  String? _textfieldEnterTicketIDTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 14) {
      return 'Invalid Ticket ID';
    }
    if (val.length > 14) {
      return 'Maximum 14 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textfieldEnterTicketIDTextControllerValidator =
        _textfieldEnterTicketIDTextControllerValidator;
  }

  @override
  void dispose() {
    textfieldEnterTicketIDFocusNode?.dispose();
    textfieldEnterTicketIDTextController?.dispose();
  }
}
