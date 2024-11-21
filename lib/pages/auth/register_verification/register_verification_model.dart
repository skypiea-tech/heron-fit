import '/flutter_flow/flutter_flow_util.dart';
import 'register_verification_widget.dart' show RegisterVerificationWidget;
import 'package:flutter/material.dart';

class RegisterVerificationModel
    extends FlutterFlowModel<RegisterVerificationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
