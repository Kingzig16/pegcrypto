import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'echangedetail_widget.dart' show EchangedetailWidget;
import 'package:flutter/material.dart';

class EchangedetailModel extends FlutterFlowModel<EchangedetailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for receptionnum widget.
  FocusNode? receptionnumFocusNode;
  TextEditingController? receptionnumTextController;
  String? Function(BuildContext, String?)? receptionnumTextControllerValidator;
  // State field(s) for montant widget.
  FocusNode? montantFocusNode;
  TextEditingController? montantTextController;
  String? Function(BuildContext, String?)? montantTextControllerValidator;
  // State field(s) for numeroenvoie widget.
  FocusNode? numeroenvoieFocusNode;
  TextEditingController? numeroenvoieTextController;
  String? Function(BuildContext, String?)? numeroenvoieTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (create_exchange_transaction_api_v1_transaction_exchange__post)] action in Button widget.
  ApiCallResponse? apiResultxfx;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    receptionnumFocusNode?.dispose();
    receptionnumTextController?.dispose();

    montantFocusNode?.dispose();
    montantTextController?.dispose();

    numeroenvoieFocusNode?.dispose();
    numeroenvoieTextController?.dispose();
  }
}
