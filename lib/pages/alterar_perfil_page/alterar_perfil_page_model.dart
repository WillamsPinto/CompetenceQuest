import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'alterar_perfil_page_widget.dart' show AlterarPerfilPageWidget;
import 'package:flutter/material.dart';

class AlterarPerfilPageModel extends FlutterFlowModel<AlterarPerfilPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for Idade widget.
  FocusNode? idadeFocusNode;
  TextEditingController? idadeTextController;
  String? Function(BuildContext, String?)? idadeTextControllerValidator;
  // State field(s) for Sexo widget.
  String? sexoValue;
  FormFieldController<String>? sexoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    idadeFocusNode?.dispose();
    idadeTextController?.dispose();
  }
}
