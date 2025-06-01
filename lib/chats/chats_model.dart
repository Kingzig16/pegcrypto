import '/components/chat_bubble_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chats_widget.dart' show ChatsWidget;
import 'package:flutter/material.dart';

class ChatsModel extends FlutterFlowModel<ChatsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for chat_bubble component.
  late ChatBubbleModel chatBubbleModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    chatBubbleModel = createModel(context, () => ChatBubbleModel());
  }

  @override
  void dispose() {
    chatBubbleModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
