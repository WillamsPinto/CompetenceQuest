import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'competence_quest_intro_result_page_model.dart';
export 'competence_quest_intro_result_page_model.dart';

class CompetenceQuestIntroResultPageWidget extends StatefulWidget {
  const CompetenceQuestIntroResultPageWidget({super.key});

  @override
  State<CompetenceQuestIntroResultPageWidget> createState() =>
      _CompetenceQuestIntroResultPageWidgetState();
}

class _CompetenceQuestIntroResultPageWidgetState
    extends State<CompetenceQuestIntroResultPageWidget> {
  late CompetenceQuestIntroResultPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompetenceQuestIntroResultPageModel());
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
            competenceQuestIntroResultPageCompetenceQuestRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final competenceQuestIntroResultPageCompetenceQuestRecord =
            competenceQuestIntroResultPageCompetenceQuestRecordList.isNotEmpty
                ? competenceQuestIntroResultPageCompetenceQuestRecordList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Text(
                'Questionario de Competencia',
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    valueOrDefault<String>(
                      competenceQuestIntroResultPageCompetenceQuestRecord
                          ?.foiRespondido
                          .toString(),
                      'foi respondido?',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await competenceQuestIntroResultPageCompetenceQuestRecord!
                          .reference
                          .update(createCompetenceQuestRecordData(
                        foiRespondido: false,
                      ));
                    },
                    text: 'RESET',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                  if (!competenceQuestIntroResultPageCompetenceQuestRecord!
                      .foiRespondido)
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
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
                                    'https://www.bizneo.com/blog/wp-content/uploads/2021/12/teste-de-competencia-profissional-810x455.png',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Text(
                                  'Bem-vindo ao nosso Quiz de Rastreabilidade de Competência! Este quiz foi especialmente desenvolvido para ajudá-lo a avaliar e rastrear suas habilidades e conhecimentos em diversas áreas. Seja você um profissional buscando aprimorar sua carreira, um estudante desejando identificar pontos fortes e fracos, ou um gestor interessado em mapear as competências de sua equipe, este quiz oferece uma ferramenta valiosa para seu desenvolvimento.\n\nA rastreabilidade de competência é um processo essencial para garantir que as habilidades e conhecimentos adquiridos sejam aplicados de forma eficaz no ambiente de trabalho ou acadêmico. Com a evolução constante do mercado e das exigências profissionais, manter-se atualizado e consciente de suas capacidades é crucial para o sucesso.\n\nNeste quiz, você encontrará perguntas que abrangem uma ampla gama de áreas, desde habilidades técnicas específicas até competências comportamentais e de gestão. Cada pergunta foi elaborada para proporcionar uma reflexão aprofundada sobre suas competências atuais e como elas podem ser aprimoradas.\n\nAo concluir o quiz, você receberá uma análise detalhada de suas respostas, destacando suas principais competências, áreas de melhoria e sugestões de desenvolvimento. Utilize essas informações para criar um plano de ação personalizado que o ajudará a alcançar seus objetivos profissionais e pessoais.',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('CompetenceQuestPage');
                                },
                                text: 'Iniciar',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  if (competenceQuestIntroResultPageCompetenceQuestRecord
                          .foiRespondido ??
                      true)
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Parte ainda não implementada, por favor, clique no botão reset para retornar ao estado anterior.',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
