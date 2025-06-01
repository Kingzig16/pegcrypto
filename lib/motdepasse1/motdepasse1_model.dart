import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'motdepasse1_widget.dart' show Motdepasse1Widget;
import 'package:flutter/material.dart';

class Motdepasse1Model extends FlutterFlowModel<Motdepasse1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for recuperationemail widget.
  FocusNode? recuperationemailFocusNode;
  TextEditingController? recuperationemailTextController;
  String? Function(BuildContext, String?)?
      recuperationemailTextControllerValidator;
  // Stores action output result for [Backend Call - API (Sendchangepasswordcode)] action in Button widget.
  ApiCallResponse? apiResultplm;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    recuperationemailFocusNode?.dispose();
    recuperationemailTextController?.dispose();
  }
}
