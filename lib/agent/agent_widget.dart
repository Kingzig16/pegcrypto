import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'agent_model.dart';
export 'agent_model.dart';

class AgentWidget extends StatefulWidget {
  const AgentWidget({super.key});

  static String routeName = 'agent';
  static String routePath = 'agent';

  @override
  State<AgentWidget> createState() => _AgentWidgetState();
}

class _AgentWidgetState extends State<AgentWidget>
    with TickerProviderStateMixin {
  late AgentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgentModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/Faso_(1024_x_1024_px)_(Fond_dcran_de_tlphone).png',
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFAppState().agentnom,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 2.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                FFAppState().agentprenom,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Ubuntu',
                                      letterSpacing: 2.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ].divide(SizedBox(width: 5.0)),
                          ),
                          Text(
                            FFAppState().agentemail,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 2.0,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 3.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Déconnexion'),
                                              content: Text(
                                                  'Voulez vous vous déconnecter ?'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          false),
                                                  child: Text('Annuler'),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          true),
                                                  child: Text('Déconnecter'),
                                                ),
                                              ],
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  FFAppState().deleteAuthtoken();
                                  FFAppState().authtoken = '';

                                  FFAppState().deleteType();
                                  FFAppState().type = '';

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Déconnectée !!',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  );

                                  context.goNamed(
                                    LoginWidget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.scale,
                                        alignment: Alignment.bottomCenter,
                                      ),
                                    },
                                  );
                                } else {
                                  Navigator.pop(context);
                                }
                              },
                              text: FFLocalizations.of(context).getText(
                                'gjfspk3o' /* Déconnexion */,
                              ),
                              icon: Icon(
                                Icons.logout_rounded,
                                size: 14.0,
                              ),
                              options: FFButtonOptions(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.03,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 1.0,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 3.0)),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 100.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.45,
                          height: MediaQuery.sizeOf(context).height * 0.18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                AgentusersWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.scale,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                },
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'q4wunu5u' /* Utilisateurs */,
                            ),
                            icon: Icon(
                              Icons.person_rounded,
                              size: 30.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconAlignment: IconAlignment.start,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x4FF1F4F8),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 100.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.45,
                          height: MediaQuery.sizeOf(context).height * 0.18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                PubliciteWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.scale,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                },
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'iytg8omp' /* Publicité */,
                            ),
                            icon: FaIcon(
                              FontAwesomeIcons.ad,
                              size: 30.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconAlignment: IconAlignment.start,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x4FF1F4F8),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          unselectedLabelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          padding: EdgeInsets.all(5.0),
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'sh4v4sb7' /* Cryptos */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'typfinqb' /* Projets */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                '3p3su8sm' /* Transactio.. */,
                              ),
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [() async {}, () async {}, () async {}][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 10.0, 5.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: (_model.apiRequestCompleter3 ??=
                                              Completer<ApiCallResponse>()
                                                ..complete(PegdwendeExchangeApiGroup
                                                    .getCryptoTransactionApiV1TransactionCryptoAdmingestfinGetCall
                                                    .call(
                                                  authtoken:
                                                      FFAppState().authtoken,
                                                )))
                                          .future,
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 70.0,
                                              height: 70.0,
                                              child: SpinKitChasingDots(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 70.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewGetCryptoTransactionApiV1TransactionCryptoAdmingestfinGetResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final cryptostransactions =
                                                getJsonField(
                                              listViewGetCryptoTransactionApiV1TransactionCryptoAdmingestfinGetResponse
                                                  .jsonBody,
                                              r'''$.data''',
                                            ).toList();

                                            return RefreshIndicator(
                                              onRefresh: () async {
                                                safeSetState(() => _model
                                                        .apiRequestCompleter3 =
                                                    null);
                                                await _model
                                                    .waitForApiRequestCompleted3();
                                              },
                                              child: ListView.separated(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    cryptostransactions.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 5.0),
                                                itemBuilder: (context,
                                                    cryptostransactionsIndex) {
                                                  final cryptostransactionsItem =
                                                      cryptostransactions[
                                                          cryptostransactionsIndex];
                                                  return Visibility(
                                                    visible: GetcryptotransactionStruct
                                                                .maybeFromMap(
                                                                    cryptostransactionsItem)
                                                            ?.isValidate ==
                                                        0,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  1.0,
                                                                  0.0,
                                                                  1.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            ValidercryptoWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'nom':
                                                                  serializeParam(
                                                                GetcryptotransactionStruct
                                                                        .maybeFromMap(
                                                                            cryptostransactionsItem)
                                                                    ?.cryptoName,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'quantite':
                                                                  serializeParam(
                                                                GetcryptotransactionStruct
                                                                        .maybeFromMap(
                                                                            cryptostransactionsItem)
                                                                    ?.cryptoQuantity,
                                                                ParamType.int,
                                                              ),
                                                              'wallet':
                                                                  serializeParam(
                                                                GetcryptotransactionStruct
                                                                        .maybeFromMap(
                                                                            cryptostransactionsItem)
                                                                    ?.cryptoWallet,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'date':
                                                                  serializeParam(
                                                                GetcryptotransactionStruct
                                                                        .maybeFromMap(
                                                                            cryptostransactionsItem)
                                                                    ?.dateCreation,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'capture':
                                                                  serializeParam(
                                                                GetcryptotransactionStruct
                                                                        .maybeFromMap(
                                                                            cryptostransactionsItem)
                                                                    ?.proofPath,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'id':
                                                                  serializeParam(
                                                                GetcryptotransactionStruct
                                                                        .maybeFromMap(
                                                                            cryptostransactionsItem)
                                                                    ?.id,
                                                                ParamType.int,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .scale,
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                              ),
                                                            },
                                                          );
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.07,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.03,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.0),
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .network(
                                                                      '${FFAppConstants.urlcryptoicon}${GetcryptotransactionStruct.maybeFromMap(cryptostransactionsItem)?.cryptoId.toString()}',
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.07,
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.03,
                                                                      fit: BoxFit
                                                                          .fill,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'cv3rc2jq' /* Achat de */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        GetcryptotransactionStruct.maybeFromMap(cryptostransactionsItem)
                                                                            ?.dateCreation,
                                                                        'date',
                                                                      ).maybeHandleOverflow(
                                                                        maxChars:
                                                                            10,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Text(
                                                                      '${GetcryptotransactionStruct.maybeFromMap(cryptostransactionsItem)?.cryptoQuantity.toString()} ${GetcryptotransactionStruct.maybeFromMap(cryptostransactionsItem)?.cryptoName}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).success,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Vers ${GetcryptotransactionStruct.maybeFromMap(cryptostransactionsItem)?.cryptoWallet}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 10.0)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 10.0, 5.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: (_model.apiRequestCompleter2 ??=
                                              Completer<ApiCallResponse>()
                                                ..complete(PegdwendeExchangeApiGroup
                                                    .getProjectTransactionsApiV1TransactionProjectAdmingestfinGetCall
                                                    .call(
                                                  authtoken:
                                                      FFAppState().authtoken,
                                                )))
                                          .future,
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 70.0,
                                              height: 70.0,
                                              child: SpinKitChasingDots(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 70.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewGetProjectTransactionsApiV1TransactionProjectAdmingestfinGetResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final projestransactions =
                                                getJsonField(
                                              listViewGetProjectTransactionsApiV1TransactionProjectAdmingestfinGetResponse
                                                  .jsonBody,
                                              r'''$.data''',
                                            ).toList();

                                            return RefreshIndicator(
                                              onRefresh: () async {
                                                safeSetState(() => _model
                                                        .apiRequestCompleter2 =
                                                    null);
                                                await _model
                                                    .waitForApiRequestCompleted2();
                                              },
                                              child: ListView.separated(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    projestransactions.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 5.0),
                                                itemBuilder: (context,
                                                    projestransactionsIndex) {
                                                  final projestransactionsItem =
                                                      projestransactions[
                                                          projestransactionsIndex];
                                                  return Visibility(
                                                    visible: GetprojecttransactionStruct
                                                                .maybeFromMap(
                                                                    projestransactionsItem)
                                                            ?.isValidate ==
                                                        0,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  1.0,
                                                                  0.0,
                                                                  1.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            ValiderprojetWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'id':
                                                                  serializeParam(
                                                                GetprojecttransactionStruct
                                                                        .maybeFromMap(
                                                                            projestransactionsItem)
                                                                    ?.id,
                                                                ParamType.int,
                                                              ),
                                                              'titre':
                                                                  serializeParam(
                                                                GetprojecttransactionStruct
                                                                        .maybeFromMap(
                                                                            projestransactionsItem)
                                                                    ?.projectTitre,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'montant':
                                                                  serializeParam(
                                                                GetprojecttransactionStruct
                                                                        .maybeFromMap(
                                                                            projestransactionsItem)
                                                                    ?.montant,
                                                                ParamType.int,
                                                              ),
                                                              'date':
                                                                  serializeParam(
                                                                GetprojecttransactionStruct
                                                                        .maybeFromMap(
                                                                            projestransactionsItem)
                                                                    ?.dateCreation,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.07,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.03,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.0),
                                                                  ),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .network(
                                                                      '${FFAppConstants.urlprojecticon}${GetprojecttransactionStruct.maybeFromMap(projestransactionsItem)?.projectId.toString()}',
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.07,
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.03,
                                                                      fit: BoxFit
                                                                          .fill,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '7gtlwoom' /* Investissement de */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        GetprojecttransactionStruct.maybeFromMap(projestransactionsItem)
                                                                            ?.dateCreation,
                                                                        'date',
                                                                      ).maybeHandleOverflow(
                                                                        maxChars:
                                                                            10,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                  '${GetprojecttransactionStruct.maybeFromMap(projestransactionsItem)?.montant.toString()} fcfa',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  'dans ${valueOrDefault<String>(
                                                                    GetprojecttransactionStruct.maybeFromMap(
                                                                            projestransactionsItem)
                                                                        ?.projectTitre,
                                                                    'titre',
                                                                  )}'
                                                                      .maybeHandleOverflow(
                                                                    maxChars:
                                                                        25,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 10.0, 5.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: (_model.apiRequestCompleter1 ??=
                                              Completer<ApiCallResponse>()
                                                ..complete(PegdwendeExchangeApiGroup
                                                    .getExchangeTransactionsApiV1TransactionExchangeAdmingestfinGetCall
                                                    .call(
                                                  authtoken:
                                                      FFAppState().authtoken,
                                                )))
                                          .future,
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 70.0,
                                              height: 70.0,
                                              child: SpinKitChasingDots(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 70.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewGetExchangeTransactionsApiV1TransactionExchangeAdmingestfinGetResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final exchangetransactions =
                                                getJsonField(
                                              listViewGetExchangeTransactionsApiV1TransactionExchangeAdmingestfinGetResponse
                                                  .jsonBody,
                                              r'''$.data''',
                                            ).toList();

                                            return RefreshIndicator(
                                              onRefresh: () async {
                                                safeSetState(() => _model
                                                        .apiRequestCompleter1 =
                                                    null);
                                                await _model
                                                    .waitForApiRequestCompleted1();
                                              },
                                              child: ListView.separated(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    exchangetransactions.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 5.0),
                                                itemBuilder: (context,
                                                    exchangetransactionsIndex) {
                                                  final exchangetransactionsItem =
                                                      exchangetransactions[
                                                          exchangetransactionsIndex];
                                                  return Visibility(
                                                    visible: GetexchangetransactionStruct
                                                                .maybeFromMap(
                                                                    exchangetransactionsItem)
                                                            ?.isValidate ==
                                                        0,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  1.0,
                                                                  0.0,
                                                                  1.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            ValiderechangeWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'id':
                                                                  serializeParam(
                                                                GetexchangetransactionStruct
                                                                        .maybeFromMap(
                                                                            exchangetransactionsItem)
                                                                    ?.id,
                                                                ParamType.int,
                                                              ),
                                                              'montant':
                                                                  serializeParam(
                                                                GetexchangetransactionStruct
                                                                        .maybeFromMap(
                                                                            exchangetransactionsItem)
                                                                    ?.montant,
                                                                ParamType.int,
                                                              ),
                                                              'numero':
                                                                  serializeParam(
                                                                GetexchangetransactionStruct
                                                                        .maybeFromMap(
                                                                            exchangetransactionsItem)
                                                                    ?.numero,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'wallet':
                                                                  serializeParam(
                                                                GetexchangetransactionStruct
                                                                        .maybeFromMap(
                                                                            exchangetransactionsItem)
                                                                    ?.wallet,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'source':
                                                                  serializeParam(
                                                                GetexchangetransactionStruct
                                                                        .maybeFromMap(
                                                                            exchangetransactionsItem)
                                                                    ?.source,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'destination':
                                                                  serializeParam(
                                                                GetexchangetransactionStruct
                                                                        .maybeFromMap(
                                                                            exchangetransactionsItem)
                                                                    ?.destination,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'date':
                                                                  serializeParam(
                                                                GetexchangetransactionStruct
                                                                        .maybeFromMap(
                                                                            exchangetransactionsItem)
                                                                    ?.dateCreation,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Stack(
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.07,
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.03,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0),
                                                                      ),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0),
                                                                        child: Image
                                                                            .network(
                                                                          '${FFAppConstants.urlexchangeicon}${GetexchangetransactionStruct.maybeFromMap(exchangetransactionsItem)?.exchangeId.toString()}/source',
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.07,
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.03,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'yjhxik9u' /* Echange de */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            GetexchangetransactionStruct.maybeFromMap(exchangetransactionsItem)?.dateCreation,
                                                                            'date',
                                                                          ).maybeHandleOverflow(
                                                                            maxChars:
                                                                                10,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          19.0)),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.0),
                                                                    child: Image
                                                                        .network(
                                                                      '${FFAppConstants.urlexchangeicon}${GetexchangetransactionStruct.maybeFromMap(exchangetransactionsItem)?.exchangeId.toString()}/destination',
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.07,
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.03,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                  '${GetexchangetransactionStruct.maybeFromMap(exchangetransactionsItem)?.montant.toString()} fcfa',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  'vers ${valueOrDefault<String>(
                                                                    GetexchangetransactionStruct.maybeFromMap(
                                                                            exchangetransactionsItem)
                                                                        ?.destination,
                                                                    'destination',
                                                                  )}'
                                                                      .maybeHandleOverflow(
                                                                    maxChars:
                                                                        25,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(SizedBox(height: 5.0)),
            ),
          ),
        ),
      ),
    );
  }
}
