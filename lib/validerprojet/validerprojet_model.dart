import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'validerprojet_widget.dart' show ValiderprojetWidget;
import 'package:flutter/material.dart';

class ValiderprojetModel extends FlutterFlowModel<ValiderprojetWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (validate_project_transaction_api_v1_transaction_project_validate__id__post)] action in Button widget.
  ApiCallResponse? apiResultvkl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
