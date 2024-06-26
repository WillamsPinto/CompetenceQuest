import '/flutter_flow/flutter_flow_util.dart';
import 'web_view_texto_page_widget.dart' show WebViewTextoPageWidget;
import 'package:flutter/material.dart';

class WebViewTextoPageModel extends FlutterFlowModel<WebViewTextoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
