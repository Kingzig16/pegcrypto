import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'email_verif_widget.dart' show EmailVerifWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class EmailVerifModel extends FlutterFlowModel<EmailVerifWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for code1 widget.
  FocusNode? code1FocusNode;
  TextEditingController? code1TextController;
  String? Function(BuildContext, String?)? code1TextControllerValidator;
  // State field(s) for code2 widget.
  FocusNode? code2FocusNode;
  TextEditingController? code2TextController;
  String? Function(BuildContext, String?)? code2TextControllerValidator;
  // State field(s) for code3 widget.
  FocusNode? code3FocusNode;
  TextEditingController? code3TextController;
  String? Function(BuildContext, String?)? code3TextControllerValidator;
  // State field(s) for code4 widget.
  FocusNode? code4FocusNode;
  TextEditingController? code4TextController;
  String? Function(BuildContext, String?)? code4TextControllerValidator;
  // State field(s) for code5 widget.
  FocusNode? code5FocusNode;
  TextEditingController? code5TextController;
  String? Function(BuildContext, String?)? code5TextControllerValidator;
  // State field(s) for code6 widget.
  FocusNode? code6FocusNode;
  TextEditingController? code6TextController;
  String? Function(BuildContext, String?)? code6TextControllerValidator;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 120000;
  int timerMilliseconds = 120000;
  String timerValue = StopWatchTimer.getDisplayTime(
    120000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - API (verify_confirmation_code_api_v1_client_confirm_email__code__post)] action in Button widget.
  ApiCallResponse? apiResult7pc;
  // Stores action output result for [Backend Call - API (resend_email_api_v1_client_confirm_email_get)] action in Text widget.
  ApiCallResponse? apiResultdgd;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    code1FocusNode?.dispose();
    code1TextController?.dispose();

    code2FocusNode?.dispose();
    code2TextController?.dispose();

    code3FocusNode?.dispose();
    code3TextController?.dispose();

    code4FocusNode?.dispose();
    code4TextController?.dispose();

    code5FocusNode?.dispose();
    code5TextController?.dispose();

    code6FocusNode?.dispose();
    code6TextController?.dispose();

    timerController.dispose();
  }
}
