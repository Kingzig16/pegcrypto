import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'rush_widget.dart' show RushWidget;
import 'package:flutter/material.dart';

class RushModel extends FlutterFlowModel<RushWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for montant widget.
  FocusNode? montantFocusNode1;
  TextEditingController? montantTextController1;
  String? Function(BuildContext, String?)? montantTextController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for montant widget.
  FocusNode? montantFocusNode2;
  TextEditingController? montantTextController2;
  String? Function(BuildContext, String?)? montantTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    montantFocusNode1?.dispose();
    montantTextController1?.dispose();

    montantFocusNode2?.dispose();
    montantTextController2?.dispose();
  }
}
