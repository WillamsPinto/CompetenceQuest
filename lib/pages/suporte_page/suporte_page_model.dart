import '/flutter_flow/flutter_flow_util.dart';
import 'suporte_page_widget.dart' show SuportePageWidget;
import 'package:flutter/material.dart';

class SuportePageModel extends FlutterFlowModel<SuportePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
