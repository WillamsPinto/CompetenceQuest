import '/flutter_flow/flutter_flow_util.dart';
import 'web_viewer_page_widget.dart' show WebViewerPageWidget;
import 'package:flutter/material.dart';

class WebViewerPageModel extends FlutterFlowModel<WebViewerPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
