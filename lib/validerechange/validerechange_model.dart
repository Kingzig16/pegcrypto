import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'validerechange_widget.dart' show ValiderechangeWidget;
import 'package:flutter/material.dart';

class ValiderechangeModel extends FlutterFlowModel<ValiderechangeWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (validate_exchange_transaction_api_v1_transaction_exchange_validate__id__post)] action in Button widget.
  ApiCallResponse? apiResultssv;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
