import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'competence_quest_page_model.dart';
export 'competence_quest_page_model.dart';

class CompetenceQuestPageWidget extends StatefulWidget {
  const CompetenceQuestPageWidget({super.key});

  @override
  State<CompetenceQuestPageWidget> createState() =>
      _CompetenceQuestPageWidgetState();
}

class _CompetenceQuestPageWidgetState extends State<CompetenceQuestPageWidget> {
  late CompetenceQuestPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompetenceQuestPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CompetenceQuestRecord>>(
      stream: queryCompetenceQuestRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<CompetenceQuestRecord>
            competenceQuestPageCompetenceQuestRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final competenceQuestPageCompetenceQuestRecord =
            competenceQuestPageCompetenceQuestRecordList.isNotEmpty
                ? competenceQuestPageCompetenceQuestRecordList.first
                : null;
        return YoutubeFullScreenWrapper(
          child: GestureDetector(
            onTap: () => _model.unfocusNode.canRequestFocus
                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                : FocusScope.of(context).unfocus(),
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                title: Text(
                  'Questionario',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                      ),
                ),
                actions: const [],
                centerTitle: false,
                elevation: 2.0,
              ),
              body: SafeArea(
                top: true,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (competenceQuestPageCompetenceQuestRecord
                            ?.currentQuestion ==
                        1)
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://content.imageresizer.com/images/memes/what-da-dog-meme-10.jpg',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Quais linguagens de programação você domina?',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Form(
                                key: _model.formKey1,
                                autovalidateMode: AutovalidateMode.always,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FlutterFlowRadioButton(
                                    options: [
                                      'Nenhuma',
                                      'Uma',
                                      'Duas',
                                      'Três ou mais'
                                    ].toList(),
                                    onChanged: (val) => setState(() {}),
                                    controller:
                                        _model.radioButtonValueController1 ??=
                                            FormFieldController<String>(null),
                                    optionHeight: 32.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    selectedTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                    buttonPosition: RadioButtonPosition.left,
                                    direction: Axis.vertical,
                                    radioButtonColor:
                                        FlutterFlowTheme.of(context).primary,
                                    inactiveRadioButtonColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    toggleable: false,
                                    horizontalAlignment: WrapAlignment.start,
                                    verticalAlignment: WrapCrossAlignment.start,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.formKey1.currentState == null ||
                                        !_model.formKey1.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (_model.radioButtonValue1 == null) {
                                      return;
                                    }
                                    if (_model.radioButtonValue1 == 'Nenhuma') {
                                      await competenceQuestPageCompetenceQuestRecord!
                                          .reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'score': FieldValue.increment(0),
                                          },
                                        ),
                                      });
                                    } else {
                                      if (_model.radioButtonValue1 == 'Uma') {
                                        await competenceQuestPageCompetenceQuestRecord!
                                            .reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'score': FieldValue.increment(1),
                                            },
                                          ),
                                        });
                                      } else {
                                        if (_model.radioButtonValue1 ==
                                            'Duas') {
                                          await competenceQuestPageCompetenceQuestRecord!
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'score':
                                                    FieldValue.increment(2),
                                              },
                                            ),
                                          });
                                        } else {
                                          await competenceQuestPageCompetenceQuestRecord!
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'score':
                                                    FieldValue.increment(3),
                                              },
                                            ),
                                          });
                                        }
                                      }
                                    }

                                    await competenceQuestPageCompetenceQuestRecord
                                        .reference
                                        .update(createCompetenceQuestRecordData(
                                      currentQuestion: 2,
                                    ));
                                  },
                                  text: 'Avançar',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (competenceQuestPageCompetenceQuestRecord
                            ?.currentQuestion ==
                        2)
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://i.kym-cdn.com/photos/images/newsfeed/002/418/775/f5d.jpeg',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Você tem experiência com ferramentas de gerenciamento de projetos (como Jira, Trello, Asana)?\n',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Form(
                                  key: _model.formKey6,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowRadioButton(
                                      options: [
                                        'Nenhuma experiência',
                                        'Experiência básica',
                                        'Experiência intermediária',
                                        'Experiência avançada'
                                      ].toList(),
                                      onChanged: (val) => setState(() {}),
                                      controller:
                                          _model.radioButtonValueController2 ??=
                                              FormFieldController<String>(null),
                                      optionHeight: 32.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      selectedTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.vertical,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey6.currentState ==
                                              null ||
                                          !_model.formKey6.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.radioButtonValue2 == null) {
                                        return;
                                      }
                                      if (_model.radioButtonValue2 ==
                                          'Nenhuma experiência') {
                                        await competenceQuestPageCompetenceQuestRecord!
                                            .reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'score': FieldValue.increment(0),
                                            },
                                          ),
                                        });
                                      } else {
                                        if (_model.radioButtonValue2 ==
                                            'Experiência básica') {
                                          await competenceQuestPageCompetenceQuestRecord!
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'score':
                                                    FieldValue.increment(1),
                                              },
                                            ),
                                          });
                                        } else {
                                          if (_model.radioButtonValue2 ==
                                              'Experiência intermediária') {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(2),
                                                },
                                              ),
                                            });
                                          } else {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(3),
                                                },
                                              ),
                                            });
                                          }
                                        }
                                      }

                                      await competenceQuestPageCompetenceQuestRecord
                                          .reference
                                          .update(
                                              createCompetenceQuestRecordData(
                                        currentQuestion: 3,
                                      ));
                                    },
                                    text: 'Avançar',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (competenceQuestPageCompetenceQuestRecord
                            ?.currentQuestion ==
                        3)
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://i.redd.it/gd7suscsqp781.jpg',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Qual é o seu nível de proficiência em software de análise de dados (como Excel, SQL, Python)?',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Form(
                                  key: _model.formKey5,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowRadioButton(
                                      options: [
                                        'Nenhuma proficiência',
                                        'Proficiência básica',
                                        'Proficiência intermediária',
                                        'Proficiência avançada'
                                      ].toList(),
                                      onChanged: (val) => setState(() {}),
                                      controller:
                                          _model.radioButtonValueController3 ??=
                                              FormFieldController<String>(null),
                                      optionHeight: 32.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      selectedTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.vertical,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey5.currentState ==
                                              null ||
                                          !_model.formKey5.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.radioButtonValue3 == null) {
                                        return;
                                      }
                                      if (_model.radioButtonValue3 ==
                                          'Nenhuma proficiência') {
                                        await competenceQuestPageCompetenceQuestRecord!
                                            .reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'score': FieldValue.increment(0),
                                            },
                                          ),
                                        });
                                      } else {
                                        if (_model.radioButtonValue3 ==
                                            'Proficiência básica') {
                                          await competenceQuestPageCompetenceQuestRecord!
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'score':
                                                    FieldValue.increment(1),
                                              },
                                            ),
                                          });
                                        } else {
                                          if (_model.radioButtonValue3 ==
                                              'Proficiência intermediária') {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(2),
                                                },
                                              ),
                                            });
                                          } else {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(3),
                                                },
                                              ),
                                            });
                                          }
                                        }
                                      }

                                      await competenceQuestPageCompetenceQuestRecord
                                          .reference
                                          .update(
                                              createCompetenceQuestRecordData(
                                        currentQuestion: 4,
                                      ));
                                    },
                                    text: 'Avançar',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (competenceQuestPageCompetenceQuestRecord
                            ?.currentQuestion ==
                        4)
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?q=65&auto=format&w=1600&ar=2:1&fit=crop',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Como você avalia suas habilidades de comunicação verbal e escrita?',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Form(
                                  key: _model.formKey7,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowRadioButton(
                                      options: [
                                        'Fracas',
                                        'Razoáveis',
                                        'Boas',
                                        'Excelentes'
                                      ].toList(),
                                      onChanged: (val) => setState(() {}),
                                      controller:
                                          _model.radioButtonValueController4 ??=
                                              FormFieldController<String>(null),
                                      optionHeight: 32.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      selectedTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.vertical,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey7.currentState ==
                                              null ||
                                          !_model.formKey7.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.radioButtonValue4 == null) {
                                        return;
                                      }
                                      if (_model.radioButtonValue4 ==
                                          'Fracas') {
                                        await competenceQuestPageCompetenceQuestRecord!
                                            .reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'score': FieldValue.increment(0),
                                            },
                                          ),
                                        });
                                      } else {
                                        if (_model.radioButtonValue4 ==
                                            'Razoáveis') {
                                          await competenceQuestPageCompetenceQuestRecord!
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'score':
                                                    FieldValue.increment(1),
                                              },
                                            ),
                                          });
                                        } else {
                                          if (_model.radioButtonValue4 ==
                                              'Boas') {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(2),
                                                },
                                              ),
                                            });
                                          } else {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(3),
                                                },
                                              ),
                                            });
                                          }
                                        }
                                      }

                                      await competenceQuestPageCompetenceQuestRecord
                                          .reference
                                          .update(
                                              createCompetenceQuestRecordData(
                                        currentQuestion: 5,
                                      ));
                                    },
                                    text: 'Avançar',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (competenceQuestPageCompetenceQuestRecord
                            ?.currentQuestion ==
                        5)
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const FlutterFlowYoutubePlayer(
                                  url:
                                      'https://www.youtube.com/watch?v=e9dZQelULDk',
                                  autoPlay: false,
                                  looping: true,
                                  mute: false,
                                  showControls: true,
                                  showFullScreen: true,
                                  strictRelatedVideos: false,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'Assista ao vídeo e responda: Como você lidaria com essa situação?',
                                    textAlign: TextAlign.justify,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Form(
                                  key: _model.formKey2,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Responda Aqui...',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.justify,
                                      maxLines: 10,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey2.currentState ==
                                              null ||
                                          !_model.formKey2.currentState!
                                              .validate()) {
                                        return;
                                      }

                                      await competenceQuestPageCompetenceQuestRecord!
                                          .reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'score': FieldValue.increment(5),
                                          },
                                        ),
                                      });

                                      await competenceQuestPageCompetenceQuestRecord
                                          .reference
                                          .update(
                                              createCompetenceQuestRecordData(
                                        currentQuestion: 6,
                                      ));
                                    },
                                    text: 'Avançar',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (competenceQuestPageCompetenceQuestRecord
                            ?.currentQuestion ==
                        6)
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://alataj.com.br/wp-content/uploads/2020/12/ALATAJ-SITE-mem.jpg',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Como você lida com feedback construtivo?',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Form(
                                  key: _model.formKey4,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowRadioButton(
                                      options: [
                                        'Tenho dificuldade em aceitar feedback',
                                        'Aceito, mas tenho dificuldade em aplicá-lo',
                                        'Aceito e aplico de forma eficaz',
                                        'Proativo em buscar e aplicar feedback'
                                      ].toList(),
                                      onChanged: (val) => setState(() {}),
                                      controller:
                                          _model.radioButtonValueController5 ??=
                                              FormFieldController<String>(null),
                                      optionHeight: 32.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      selectedTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.vertical,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey4.currentState ==
                                              null ||
                                          !_model.formKey4.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.radioButtonValue5 == null) {
                                        return;
                                      }
                                      if (_model.radioButtonValue5 ==
                                          'Tenho dificuldade em aceitar feedback') {
                                        await competenceQuestPageCompetenceQuestRecord!
                                            .reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'score': FieldValue.increment(0),
                                            },
                                          ),
                                        });
                                      } else {
                                        if (_model.radioButtonValue5 ==
                                            'Aceito, mas tenho dificuldade em aplicá-lo') {
                                          await competenceQuestPageCompetenceQuestRecord!
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'score':
                                                    FieldValue.increment(1),
                                              },
                                            ),
                                          });
                                        } else {
                                          if (_model.radioButtonValue5 ==
                                              'Aceito e aplico de forma eficaz') {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(2),
                                                },
                                              ),
                                            });
                                          } else {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(3),
                                                },
                                              ),
                                            });
                                          }
                                        }
                                      }

                                      await competenceQuestPageCompetenceQuestRecord
                                          .reference
                                          .update(
                                              createCompetenceQuestRecordData(
                                        currentQuestion: 7,
                                      ));
                                    },
                                    text: 'Avançar',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (competenceQuestPageCompetenceQuestRecord
                            ?.currentQuestion ==
                        7)
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://midias.correiobraziliense.com.br/_midias/jpg/2023/09/22/675x450/1_meme_da_chloe-29653056.jpg?20230922192751?20230922192751',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Você considera que tem boas habilidades de trabalho em equipe?',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Form(
                                  key: _model.formKey3,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowRadioButton(
                                      options: [
                                        'Não, prefiro trabalhar sozinho',
                                        'Sim, mas com algumas dificuldades',
                                        'Sim, colaboro bem com colegas',
                                        'Sim, frequentemente assumo um papel de liderança'
                                      ].toList(),
                                      onChanged: (val) => setState(() {}),
                                      controller:
                                          _model.radioButtonValueController6 ??=
                                              FormFieldController<String>(null),
                                      optionHeight: 32.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      selectedTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.vertical,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey3.currentState ==
                                              null ||
                                          !_model.formKey3.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.radioButtonValue6 == null) {
                                        return;
                                      }
                                      if (_model.radioButtonValue6 ==
                                          'Não, prefiro trabalhar sozinho') {
                                        await competenceQuestPageCompetenceQuestRecord!
                                            .reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'score': FieldValue.increment(0),
                                            },
                                          ),
                                        });
                                      } else {
                                        if (_model.radioButtonValue6 ==
                                            'Sim, mas com algumas dificuldades') {
                                          await competenceQuestPageCompetenceQuestRecord!
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'score':
                                                    FieldValue.increment(1),
                                              },
                                            ),
                                          });
                                        } else {
                                          if (_model.radioButtonValue6 ==
                                              'Sim, colaboro bem com colegas') {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(2),
                                                },
                                              ),
                                            });
                                          } else {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(3),
                                                },
                                              ),
                                            });
                                          }
                                        }
                                      }

                                      await competenceQuestPageCompetenceQuestRecord
                                          .reference
                                          .update(
                                              createCompetenceQuestRecordData(
                                        currentQuestion: 8,
                                      ));
                                    },
                                    text: 'Avançar',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (competenceQuestPageCompetenceQuestRecord
                            ?.currentQuestion ==
                        8)
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://t.ctcdn.com.br/I-Nm-UiruDNAkdQayP4pGO5wx0Q=/1200x675/smart/i598772.jpeg',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Qual é a sua experiência em liderar equipes?',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Form(
                                  key: _model.formKey8,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowRadioButton(
                                      options: [
                                        'Nenhuma experiência',
                                        'Experiência limitada (até 1 ano)',
                                        'Experiência moderada (1-3 anos)',
                                        'Experiência extensa (mais de 3 anos)'
                                      ].toList(),
                                      onChanged: (val) => setState(() {}),
                                      controller:
                                          _model.radioButtonValueController7 ??=
                                              FormFieldController<String>(null),
                                      optionHeight: 32.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      selectedTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.vertical,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey8.currentState ==
                                              null ||
                                          !_model.formKey8.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.radioButtonValue7 == null) {
                                        return;
                                      }
                                      if (_model.radioButtonValue7 ==
                                          'Nenhuma experiência') {
                                        await competenceQuestPageCompetenceQuestRecord!
                                            .reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'score': FieldValue.increment(0),
                                            },
                                          ),
                                        });
                                      } else {
                                        if (_model.radioButtonValue7 ==
                                            'Experiência limitada (até 1 ano)') {
                                          await competenceQuestPageCompetenceQuestRecord!
                                              .reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'score':
                                                    FieldValue.increment(1),
                                              },
                                            ),
                                          });
                                        } else {
                                          if (_model.radioButtonValue7 ==
                                              'Experiência moderada (1-3 anos)') {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(2),
                                                },
                                              ),
                                            });
                                          } else {
                                            await competenceQuestPageCompetenceQuestRecord!
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'score':
                                                      FieldValue.increment(3),
                                                },
                                              ),
                                            });
                                          }
                                        }
                                      }

                                      await competenceQuestPageCompetenceQuestRecord
                                          .reference
                                          .update(
                                              createCompetenceQuestRecordData(
                                        foiRespondido: true,
                                      ));

                                      context.pushNamed(
                                          'CompetenceQuestIntroResultPage');
                                    },
                                    text: 'Finalizar',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
