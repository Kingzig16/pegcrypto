import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  String? affiliation;

  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - API (login_api_v1_login__post)] action in Button widget.
  ApiCallResponse? apiResult7ad;
  // State field(s) for affliliation widget.
  FocusNode? affliliationFocusNode;
  TextEditingController? affliliationTextController;
  String? Function(BuildContext, String?)? affliliationTextControllerValidator;
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
  // State field(s) for emailAddressinscription widget.
  FocusNode? emailAddressinscriptionFocusNode;
  TextEditingController? emailAddressinscriptionTextController;
  String? Function(BuildContext, String?)?
      emailAddressinscriptionTextControllerValidator;
  // State field(s) for passwordinscription widget.
  FocusNode? passwordinscriptionFocusNode;
  TextEditingController? passwordinscriptionTextController;
  late bool passwordinscriptionVisibility;
  String? Function(BuildContext, String?)?
      passwordinscriptionTextControllerValidator;
  // Stores action output result for [Backend Call - API (create_user_api_v1_client__post)] action in Button widget.
  ApiCallResponse? apiResult7adx;
  // Stores action output result for [Backend Call - API (login_api_v1_login__post)] action in Button widget.
  ApiCallResponse? apiResultg99;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordinscriptionVisibility = false;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    affliliationFocusNode?.dispose();
    affliliationTextController?.dispose();

    nomFocusNode?.dispose();
    nomTextController?.dispose();

    prenomFocusNode?.dispose();
    prenomTextController?.dispose();

    contactFocusNode?.dispose();
    contactTextController?.dispose();

    emailAddressinscriptionFocusNode?.dispose();
    emailAddressinscriptionTextController?.dispose();

    passwordinscriptionFocusNode?.dispose();
    passwordinscriptionTextController?.dispose();
  }
}
