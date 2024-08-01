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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    testAnswerFocusNode?.dispose();
    testAnswerTextController?.dispose();
  }
}
