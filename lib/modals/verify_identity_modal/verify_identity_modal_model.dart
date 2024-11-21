import '/flutter_flow/flutter_flow_util.dart';
import 'verify_identity_modal_widget.dart' show VerifyIdentityModalWidget;
import 'package:flutter/material.dart';

class VerifyIdentityModalModel
    extends FlutterFlowModel<VerifyIdentityModalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    confirmPasswordVisibility = false;
    passwordVisibility = false;
  }

  @override
  void dispose() {
    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
