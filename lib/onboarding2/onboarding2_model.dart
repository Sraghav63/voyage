import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding2_widget.dart' show Onboarding2Widget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Onboarding2Model extends FlutterFlowModel<Onboarding2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  AudioPlayer? soundPlayer;
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
