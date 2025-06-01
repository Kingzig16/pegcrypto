import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'completeprofil_widget.dart' show CompleteprofilWidget;
import 'package:flutter/material.dart';

class CompleteprofilModel extends FlutterFlowModel<CompleteprofilWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for codeaffiliation widget.
  FocusNode? codeaffiliationFocusNode;
  TextEditingController? codeaffiliationTextController;
  String? Function(BuildContext, String?)?
      codeaffiliationTextControllerValidator;
  // State field(s) for pays widget.
  String? paysValue;
  FormFieldController<String>? paysValueController;
  // State field(s) for ville widget.
  FocusNode? villeFocusNode;
  TextEditingController? villeTextController;
  String? Function(BuildContext, String?)? villeTextControllerValidator;
  // State field(s) for codepostal widget.
  FocusNode? codepostalFocusNode;
  TextEditingController? codepostalTextController;
  String? Function(BuildContext, String?)? codepostalTextControllerValidator;
  // State field(s) for typepieceidentite widget.
  String? typepieceidentiteValue;
  FormFieldController<String>? typepieceidentiteValueController;
  // State field(s) for datenaissance widget.
  FocusNode? datenaissanceFocusNode;
  TextEditingController? datenaissanceTextController;
  String? Function(BuildContext, String?)? datenaissanceTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for numeroidentite widget.
  FocusNode? numeroidentiteFocusNode;
  TextEditingController? numeroidentiteTextController;
  String? Function(BuildContext, String?)?
      numeroidentiteTextControllerValidator;
  // State field(s) for dateexpiration widget.
  FocusNode? dateexpirationFocusNode;
  TextEditingController? dateexpirationTextController;
  String? Function(BuildContext, String?)?
      dateexpirationTextControllerValidator;
  DateTime? datePicked2;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (modify_user_api_v1_client__patch)] action in Button widget.
  ApiCallResponse? apiResultra3;
  // Stores action output result for [Backend Call - API (post_user_identity_recto_api_v1_client_identity__type_identity__post)] action in Button widget.
  ApiCallResponse? apiResultv42;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codeaffiliationFocusNode?.dispose();
    codeaffiliationTextController?.dispose();

    villeFocusNode?.dispose();
    villeTextController?.dispose();

    codepostalFocusNode?.dispose();
    codepostalTextController?.dispose();

    datenaissanceFocusNode?.dispose();
    datenaissanceTextController?.dispose();

    numeroidentiteFocusNode?.dispose();
    numeroidentiteTextController?.dispose();

    dateexpirationFocusNode?.dispose();
    dateexpirationTextController?.dispose();
  }
}
