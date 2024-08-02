import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding2_copy_copy_widget.dart' show Onboarding2CopyCopyWidget;
import 'package:flutter/material.dart';

class Onboarding2CopyCopyModel
    extends FlutterFlowModel<Onboarding2CopyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for testAnswer widget.
  FocusNode? testAnswerFocusNode;
  TextEditingController? testAnswerTextController;
  String? Function(BuildContext, String?)? testAnswerTextControllerValidator;

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
