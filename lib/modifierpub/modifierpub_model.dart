import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modifierpub_widget.dart' show ModifierpubWidget;
import 'package:flutter/material.dart';

class ModifierpubModel extends FlutterFlowModel<ModifierpubWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Titre widget.
  FocusNode? titreFocusNode;
  TextEditingController? titreTextController;
  String? Function(BuildContext, String?)? titreTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (modify_pub_api_v1_pub__id__patch)] action in Button widget.
  ApiCallResponse? apiResult2et;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titreFocusNode?.dispose();
    titreTextController?.dispose();
  }
}
