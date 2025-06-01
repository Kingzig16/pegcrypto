import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'addpub_widget.dart' show AddpubWidget;
import 'package:flutter/material.dart';

class AddpubModel extends FlutterFlowModel<AddpubWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Titre widget.
  FocusNode? titreFocusNode;
  TextEditingController? titreTextController;
  String? Function(BuildContext, String?)? titreTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (add_pub_api_v1_pub__post)] action in Button widget.
  ApiCallResponse? apiResult2ea;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titreFocusNode?.dispose();
    titreTextController?.dispose();
  }
}
