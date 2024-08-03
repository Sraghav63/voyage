import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding2_copy_copy_copy_widget.dart'
    show Onboarding2CopyCopyCopyWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Onboarding2CopyCopyCopyModel
    extends FlutterFlowModel<Onboarding2CopyCopyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks.
  Future test(BuildContext context) async {}
}
