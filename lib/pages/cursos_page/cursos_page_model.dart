import '/flutter_flow/flutter_flow_util.dart';
import 'cursos_page_widget.dart' show CursosPageWidget;
import 'package:flutter/material.dart';

class CursosPageModel extends FlutterFlowModel<CursosPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
