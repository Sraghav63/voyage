import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'roadmapgendash_widget.dart' show RoadmapgendashWidget;
import 'package:flutter/material.dart';

class RoadmapgendashModel extends FlutterFlowModel<RoadmapgendashWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in roadmapgendash widget.
  List<UserinfoRow>? theoutput;
  // State field(s) for testAnswer widget.
  FocusNode? testAnswerFocusNode;
  TextEditingController? testAnswerTextController;
  String? Function(BuildContext, String?)? testAnswerTextControllerValidator;
  String? _testAnswerTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 40) {
      return 'Requires at least 40 characters.';
    }

    return null;
  }

  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminioutput1;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminioutput2;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminioutput3;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminioutput4;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminioutput5;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminioutput6;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminioutput7;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? geminioutput8;

  @override
  void initState(BuildContext context) {
    testAnswerTextControllerValidator = _testAnswerTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    testAnswerFocusNode?.dispose();
    testAnswerTextController?.dispose();
  }
}
