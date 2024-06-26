import '/flutter_flow/flutter_flow_util.dart';
import 'p_d_f_viewer_page_widget.dart' show PDFViewerPageWidget;
import 'package:flutter/material.dart';

class PDFViewerPageModel extends FlutterFlowModel<PDFViewerPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
