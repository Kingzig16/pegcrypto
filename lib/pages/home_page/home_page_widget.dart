import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = 'homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
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
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'lsjxy2y2' /* Page Title */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FutureBuilder<ApiCallResponse>(
                  future: (_model.apiRequestCompleter1 ??=
                          Completer<ApiCallResponse>()
                            ..complete(PegdwendeExchangeApiGroup
                                .getCryptoApiV1CryptoGetCall
                                .call(
                              page: FFAppConstants.page,
                              nbPerPage: FFAppConstants.nbperpage,
                              orderDescanding: FFAppConstants.order,
                              isDeleted: FFAppConstants.deleted,
                            )))
                      .future,
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
                    final listViewGetCryptoApiV1CryptoGetResponse =
                        snapshot.data!;

                    return RefreshIndicator(
                      onRefresh: () async {
                        safeSetState(() => _model.apiRequestCompleter1 = null);
                        await _model.waitForApiRequestCompleted1();
                      },
                      child: ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    listViewGetCryptoApiV1CryptoGetResponse
                                        .statusCode
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    listViewGetCryptoApiV1CryptoGetResponse
                                        .succeeded
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    listViewGetCryptoApiV1CryptoGetResponse
                                        .exceptionMessage,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 10.0)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                FutureBuilder<ApiCallResponse>(
                  future: (_model.apiRequestCompleter2 ??=
                          Completer<ApiCallResponse>()
                            ..complete(PegdwendeExchangeApiGroup
                                .getCryptoApiV1CryptoGetCall
                                .call(
                              page: FFAppConstants.page,
                              nbPerPage: FFAppConstants.nbperpage,
                              orderDescanding: FFAppConstants.order,
                              isDeleted: FFAppConstants.deleted,
                            )))
                      .future,
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
                    final listViewGetCryptoApiV1CryptoGetResponse =
                        snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final crypto = getJsonField(
                          listViewGetCryptoApiV1CryptoGetResponse.jsonBody,
                          r'''$.data''',
                        ).toList();

                        return RefreshIndicator(
                          onRefresh: () async {
                            safeSetState(
                                () => _model.apiRequestCompleter2 = null);
                            await _model.waitForApiRequestCompleted2();
                          },
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: crypto.length,
                            itemBuilder: (context, cryptoIndex) {
                              final cryptoItem = crypto[cryptoIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          CryptodataStruct.maybeFromMap(
                                                  cryptoItem)
                                              ?.nom,
                                          'nom',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          CryptodataStruct.maybeFromMap(
                                                  cryptoItem)
                                              ?.quantite
                                              .toString(),
                                          'quantite',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      CryptodataStruct.maybeFromMap(cryptoItem)
                                          ?.prixUnite
                                          .toString(),
                                      'prix',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                FutureBuilder<ApiCallResponse>(
                  future: (_model.apiRequestCompleter3 ??=
                          Completer<ApiCallResponse>()
                            ..complete(PegdwendeExchangeApiGroup
                                .getProjectsApiV1ProjectGetCall
                                .call(
                              isDeleted: FFAppConstants.deleted,
                              isFinish: FFAppConstants.finish,
                            )))
                      .future,
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
                    final listViewGetProjectsApiV1ProjectGetResponse =
                        snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final projets = getJsonField(
                          listViewGetProjectsApiV1ProjectGetResponse.jsonBody,
                          r'''$.data''',
                        ).toList();

                        return RefreshIndicator(
                          onRefresh: () async {
                            safeSetState(
                                () => _model.apiRequestCompleter3 = null);
                            await _model.waitForApiRequestCompleted3();
                          },
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: projets.length,
                            itemBuilder: (context, projetsIndex) {
                              final projetsItem = projets[projetsIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        listViewGetProjectsApiV1ProjectGetResponse
                                            .succeeded
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        listViewGetProjectsApiV1ProjectGetResponse
                                            .statusCode
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        getJsonField(
                                          listViewGetProjectsApiV1ProjectGetResponse
                                              .jsonBody,
                                          r'''$.status''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          ProjectDataStruct.maybeFromMap(
                                                  projetsItem)
                                              ?.titre,
                                          'titre',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                FutureBuilder<ApiCallResponse>(
                  future: PegdwendeExchangeApiGroup
                      .getExchangeApiV1ExchangeGetCall
                      .call(),
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
                    final listViewGetExchangeApiV1ExchangeGetResponse =
                        snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final echange = getJsonField(
                          listViewGetExchangeApiV1ExchangeGetResponse.jsonBody,
                          r'''$.data''',
                        ).toList();

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: echange.length,
                          itemBuilder: (context, echangeIndex) {
                            final echangeItem = echange[echangeIndex];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          listViewGetExchangeApiV1ExchangeGetResponse
                                              .succeeded
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          listViewGetExchangeApiV1ExchangeGetResponse
                                              .statusCode
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        ExchangeDataStruct.maybeFromMap(
                                                echangeItem)
                                            ?.source,
                                        'source',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
