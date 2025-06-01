import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'validercrypto_widget.dart' show ValidercryptoWidget;
import 'package:flutter/material.dart';

class ValidercryptoModel extends FlutterFlowModel<ValidercryptoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (get_proof_image_api_v1_transaction_crypto_admingestfin_proof__id__get)] action in validercrypto widget.
  ApiCallResponse? apiResultimage;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (validate_crypto_transaction_api_v1_transaction_crypto_validate__id__post)] action in Button widget.
  ApiCallResponse? apiResultvei;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
