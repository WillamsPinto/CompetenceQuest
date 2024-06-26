import '/flutter_flow/flutter_flow_util.dart';
import 'detalhe_competencia_page_widget.dart' show DetalheCompetenciaPageWidget;
import 'package:flutter/material.dart';

class DetalheCompetenciaPageModel
    extends FlutterFlowModel<DetalheCompetenciaPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
