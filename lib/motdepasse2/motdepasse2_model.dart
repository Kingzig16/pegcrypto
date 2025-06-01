import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'motdepasse2_widget.dart' show Motdepasse2Widget;
import 'package:flutter/material.dart';

class Motdepasse2Model extends FlutterFlowModel<Motdepasse2Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for newpassword widget.
  FocusNode? newpasswordFocusNode;
  TextEditingController? newpasswordTextController;
  late bool newpasswordVisibility;
  String? Function(BuildContext, String?)? newpasswordTextControllerValidator;
  // State field(s) for confirmpassword widget.
  FocusNode? confirmpasswordFocusNode;
  TextEditingController? confirmpasswordTextController;
  late bool confirmpasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmpasswordTextControllerValidator;
  // Stores action output result for [Backend Call - API (Checkchangepasswordcode)] action in Button widget.
  ApiCallResponse? apiResultq55;
  // Stores action output result for [Backend Call - API (Sendchangepasswordcode)] action in Text widget.
  ApiCallResponse? apiResultz3e;

  @override
  void initState(BuildContext context) {
    newpasswordVisibility = false;
    confirmpasswordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    newpasswordFocusNode?.dispose();
    newpasswordTextController?.dispose();

    confirmpasswordFocusNode?.dispose();
    confirmpasswordTextController?.dispose();
  }
}
