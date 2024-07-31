import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'details38_transaction_history_responsive_widget.dart'
    show Details38TransactionHistoryResponsiveWidget;
import 'package:flutter/material.dart';

class Details38TransactionHistoryResponsiveModel
    extends FlutterFlowModel<Details38TransactionHistoryResponsiveWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in Details38TransactionHistoryResponsive widget.
  List<UserinfoRow>? theoutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
