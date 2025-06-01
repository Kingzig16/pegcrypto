import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profiledit_widget.dart' show ProfileditWidget;
import 'package:flutter/material.dart';

class ProfileditModel extends FlutterFlowModel<ProfileditWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  // State field(s) for Prenom widget.
  FocusNode? prenomFocusNode;
  TextEditingController? prenomTextController;
  String? Function(BuildContext, String?)? prenomTextControllerValidator;
  // State field(s) for contact widget.
  FocusNode? contactFocusNode;
  TextEditingController? contactTextController;
  String? Function(BuildContext, String?)? contactTextControllerValidator;
  // State field(s) for sexe widget.
  String? sexeValue;
  FormFieldController<String>? sexeValueController;
  // Stores action output result for [Backend Call - API (modify_user_api_v1_client__patch)] action in Button widget.
  ApiCallResponse? apiResultp05;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomFocusNode?.dispose();
    nomTextController?.dispose();

    prenomFocusNode?.dispose();
    prenomTextController?.dispose();

    contactFocusNode?.dispose();
    contactTextController?.dispose();
  }
}
