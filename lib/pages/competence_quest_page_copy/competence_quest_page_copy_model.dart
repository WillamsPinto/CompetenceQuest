import '/flutter_flow/flutter_flow_util.dart';
import 'competence_quest_page_copy_widget.dart'
    show CompetenceQuestPageCopyWidget;
import 'package:flutter/material.dart';

class CompetenceQuestPageCopyModel
    extends FlutterFlowModel<CompetenceQuestPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
