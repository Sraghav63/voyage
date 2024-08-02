import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding2_copy_widget.dart' show Onboarding2CopyWidget;
import 'package:flutter/material.dart';

class Onboarding2CopyModel extends FlutterFlowModel<Onboarding2CopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for testAnswer widget.
  FocusNode? testAnswerFocusNode;
  TextEditingController? testAnswerTextController;
  String? Function(BuildContext, String?)? testAnswerTextControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminioutput2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    testAnswerFocusNode?.dispose();
    testAnswerTextController?.dispose();
  }

  /// Action blocks.
  Future test(BuildContext context) async {}
}
