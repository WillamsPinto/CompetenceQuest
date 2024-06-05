import '/flutter_flow/flutter_flow_util.dart';
import 'competence_quest_page_widget.dart' show CompetenceQuestPageWidget;
import 'package:flutter/material.dart';

class CompetenceQuestPageModel
    extends FlutterFlowModel<CompetenceQuestPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
