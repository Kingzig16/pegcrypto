import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'projetdetail_widget.dart' show ProjetdetailWidget;
import 'package:flutter/material.dart';

class ProjetdetailModel extends FlutterFlowModel<ProjetdetailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for montant widget.
  FocusNode? montantFocusNode;
  TextEditingController? montantTextController;
  String? Function(BuildContext, String?)? montantTextControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroTextController;
  String? Function(BuildContext, String?)? numeroTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (create_project_transaction_api_v1_transaction_project__post)] action in Button widget.
  ApiCallResponse? apiResultxfs;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    montantFocusNode?.dispose();
    montantTextController?.dispose();

    numeroFocusNode?.dispose();
    numeroTextController?.dispose();
  }
}
