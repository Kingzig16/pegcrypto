import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'test_widget.dart' show TestWidget;
import 'package:flutter/material.dart';

class TestModel extends FlutterFlowModel<TestWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for cryptoid widget.
  FocusNode? cryptoidFocusNode;
  TextEditingController? cryptoidTextController;
  String? Function(BuildContext, String?)? cryptoidTextControllerValidator;
  // State field(s) for cryptoquantity widget.
  FocusNode? cryptoquantityFocusNode;
  TextEditingController? cryptoquantityTextController;
  String? Function(BuildContext, String?)?
      cryptoquantityTextControllerValidator;
  // State field(s) for cryptowallet widget.
  FocusNode? cryptowalletFocusNode;
  TextEditingController? cryptowalletTextController;
  String? Function(BuildContext, String?)? cryptowalletTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (create_cryto_transaction_api_v1_transaction_crypto__post)] action in Button widget.
  ApiCallResponse? apiResultkga;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cryptoidFocusNode?.dispose();
    cryptoidTextController?.dispose();

    cryptoquantityFocusNode?.dispose();
    cryptoquantityTextController?.dispose();

    cryptowalletFocusNode?.dispose();
    cryptowalletTextController?.dispose();
  }
}
