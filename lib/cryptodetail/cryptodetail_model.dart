import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cryptodetail_widget.dart' show CryptodetailWidget;
import 'package:flutter/material.dart';

class CryptodetailModel extends FlutterFlowModel<CryptodetailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for quantite widget.
  FocusNode? quantiteFocusNode;
  TextEditingController? quantiteTextController;
  String? Function(BuildContext, String?)? quantiteTextControllerValidator;
  // State field(s) for apayer widget.
  FocusNode? apayerFocusNode;
  TextEditingController? apayerTextController;
  String? Function(BuildContext, String?)? apayerTextControllerValidator;
  // State field(s) for wallet widget.
  FocusNode? walletFocusNode;
  TextEditingController? walletTextController;
  String? Function(BuildContext, String?)? walletTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (create_cryto_transaction_api_v1_transaction_crypto__post)] action in Button widget.
  ApiCallResponse? apiResultxfd;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    quantiteFocusNode?.dispose();
    quantiteTextController?.dispose();

    apayerFocusNode?.dispose();
    apayerTextController?.dispose();

    walletFocusNode?.dispose();
    walletTextController?.dispose();
  }
}
