import '/backend/api_requests/api_calls.dart';
import '/components/shimmerhome_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'projets_model.dart';
export 'projets_model.dart';

class ProjetsWidget extends StatefulWidget {
  const ProjetsWidget({super.key});

  static String routeName = 'projets';
  static String routePath = 'projets';

  @override
  State<ProjetsWidget> createState() => _ProjetsWidgetState();
}

class _ProjetsWidgetState extends State<ProjetsWidget> {
  late ProjetsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjetsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FutureBuilder<ApiCallResponse>(
                future:
                    PegdwendeExchangeApiGroup.getUserApiV1ClientGetCall.call(
                  authtoken: FFAppState().authtoken,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return ShimmerhomeWidget();
                  }
                  final containerGetUserApiV1ClientGetResponse = snapshot.data!;

                  return Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.15,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/Faso_(1024_x_1024_px)_(Fond_dcran_de_tlphone).png',
                        ).image,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'o1tddfgt' /* Solde */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 19.0,
                                          letterSpacing: 1.0,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        getJsonField(
                                          containerGetUserApiV1ClientGetResponse
                                              .jsonBody,
                                          r'''$.data.solde''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Color(0xFFA24D4D),
                                              fontSize: 27.0,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'utd9takc' /* XOF */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Color(0xFFA24D4D),
                                              fontSize: 27.0,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 3.0)),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '4qwtyjst' /* Bienvenue  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.green,
                                          fontSize: 1.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '14kdt8gz' /* Investissez  */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Ubuntu',
                          fontSize: 23.0,
                          letterSpacing: 2.0,
                        ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'hn9ut02s' /* dans différents projets */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Ubuntu',
                          fontSize: 23.0,
                          letterSpacing: 2.0,
                        ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 44.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: PegdwendeExchangeApiGroup
                        .getProjectsApiV1ProjectGetCall
                        .call(
                      isDeleted: FFAppConstants.deleted,
                      isFinish: FFAppConstants.finish,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      final gridViewGetProjectsApiV1ProjectGetResponse =
                          snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final progets = getJsonField(
                            gridViewGetProjectsApiV1ProjectGetResponse.jsonBody,
                            r'''$.data''',
                          ).toList();

                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 1.0,
                            ),
                            scrollDirection: Axis.vertical,
                            itemCount: progets.length,
                            itemBuilder: (context, progetsIndex) {
                              final progetsItem = progets[progetsIndex];
                              return Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.45,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AutoSizeText(
                                                  valueOrDefault<String>(
                                                    ProjectDataStruct
                                                            .maybeFromMap(
                                                                progetsItem)
                                                        ?.titre,
                                                    'titre',
                                                  ).maybeHandleOverflow(
                                                    maxChars: 10,
                                                    replacement: '…',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ldbkmhyt' /* Budget : */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        ProjectDataStruct
                                                                .maybeFromMap(
                                                                    progetsItem)
                                                            ?.budget
                                                            .toString(),
                                                        'budget',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 3.0)),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                        Flexible(
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF3E0),
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: Hero(
                                              tag:
                                                  '${FFAppConstants.urlprojecticon}${ProjectDataStruct.maybeFromMap(progetsItem)?.id.toString()}',
                                              transitionOnUserGestures: true,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: Image.network(
                                                  '${FFAppConstants.urlprojecticon}${ProjectDataStruct.maybeFromMap(progetsItem)?.id.toString()}',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 3.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'g98o657b' /* Du */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 9.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  ProjectDataStruct
                                                          .maybeFromMap(
                                                              progetsItem)
                                                      ?.dateDebut,
                                                  'debut',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 9.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'j5hpr0bs' /* au */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 9.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  ProjectDataStruct
                                                          .maybeFromMap(
                                                              progetsItem)
                                                      ?.dateFin,
                                                  'fin',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 9.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 2.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed(
                                                ProjetdetailWidget.routeName,
                                                queryParameters: {
                                                  'id': serializeParam(
                                                    ProjectDataStruct
                                                            .maybeFromMap(
                                                                progetsItem)
                                                        ?.id,
                                                    ParamType.int,
                                                  ),
                                                  'titre': serializeParam(
                                                    ProjectDataStruct
                                                            .maybeFromMap(
                                                                progetsItem)
                                                        ?.titre,
                                                    ParamType.String,
                                                  ),
                                                  'budget': serializeParam(
                                                    ProjectDataStruct
                                                            .maybeFromMap(
                                                                progetsItem)
                                                        ?.budget,
                                                    ParamType.int,
                                                  ),
                                                  'debut': serializeParam(
                                                    ProjectDataStruct
                                                            .maybeFromMap(
                                                                progetsItem)
                                                        ?.dateDebut,
                                                    ParamType.String,
                                                  ),
                                                  'fin': serializeParam(
                                                    ProjectDataStruct
                                                            .maybeFromMap(
                                                                progetsItem)
                                                        ?.dateFin,
                                                    ParamType.String,
                                                  ),
                                                  'contacts': serializeParam(
                                                    ProjectDataStruct
                                                            .maybeFromMap(
                                                                progetsItem)
                                                        ?.contacts,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .scale,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    duration: Duration(
                                                        milliseconds: 500),
                                                  ),
                                                },
                                              );
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'ecxqgp0s' /* Investir */,
                                            ),
                                            options: FFButtonOptions(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.4,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.035,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                  ),
                                              elevation: 1.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(9.0),
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
                        },
                      );
                    },
                  ),
                ),
              ),
            ].divide(SizedBox(height: 30.0)),
          ),
        ),
      ),
    );
  }
}
