import '/backend/api_requests/api_calls.dart';
import '/components/shimmercarrousel_widget.dart';
import '/components/shimmercryptos_widget.dart';
import '/components/shimmerhome_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import '/index.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  static String routeName = 'home';
  static String routePath = 'home';

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 44.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FutureBuilder<ApiCallResponse>(
                              future: PegdwendeExchangeApiGroup
                                  .getUserApiV1ClientGetCall
                                  .call(
                                authtoken: FFAppState().authtoken,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return ShimmerhomeWidget();
                                }
                                final containerGetUserApiV1ClientGetResponse =
                                    snapshot.data!;

                                return Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/Faso_(1024_x_1024_px)_(Fond_dcran_de_tlphone).png',
                                      ).image,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5.0),
                                      bottomRight: Radius.circular(5.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 15.0, 15.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3050rb8u' /* Bienvenue */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color: Theme.of(context)
                                                                    .brightness ==
                                                                Brightness.light
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText
                                                            : Color(0xFF080A0A),
                                                        fontSize: 19.0,
                                                        letterSpacing: 1.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'q9vt0h3c' /* Bienvenue  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.green,
                                                        fontSize: 1.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              AutoSizeText(
                                                '${getJsonField(
                                                  containerGetUserApiV1ClientGetResponse
                                                      .jsonBody,
                                                  r'''$.data.nom''',
                                                ).toString()}  ${getJsonField(
                                                  containerGetUserApiV1ClientGetResponse
                                                      .jsonBody,
                                                  r'''$.data.prenoms''',
                                                ).toString()}',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.green,
                                                          fontSize: 17.0,
                                                          letterSpacing: 1.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 5.0)),
                                    ),
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: PegdwendeExchangeApiGroup
                                    .getAllPubApiV1PubGetCall
                                    .call(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return ShimmercarrouselWidget();
                                  }
                                  final carouselGetAllPubApiV1PubGetResponse =
                                      snapshot.data!;

                                  return Builder(
                                    builder: (context) {
                                      final pub = getJsonField(
                                        carouselGetAllPubApiV1PubGetResponse
                                            .jsonBody,
                                        r'''$.data''',
                                      ).toList();

                                      return Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.3,
                                        child: CarouselSlider.builder(
                                          itemCount: pub.length,
                                          itemBuilder: (context, pubIndex, _) {
                                            final pubItem = pub[pubIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    type:
                                                        PageTransitionType.fade,
                                                    child:
                                                        FlutterFlowExpandedImageView(
                                                      image: Image.network(
                                                        'https://www.pegdwendeechange.com/api/v1/pub/${PubliciteStruct.maybeFromMap(pubItem)?.id.toString()}',
                                                        fit: BoxFit.contain,
                                                      ),
                                                      allowRotation: false,
                                                      tag:
                                                          'https://www.pegdwendeechange.com/api/v1/pub/${PubliciteStruct.maybeFromMap(pubItem)?.id.toString()}',
                                                      useHeroAnimation: true,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Hero(
                                                tag:
                                                    'https://www.pegdwendeechange.com/api/v1/pub/${PubliciteStruct.maybeFromMap(pubItem)?.id.toString()}',
                                                transitionOnUserGestures: true,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    'https://www.pegdwendeechange.com/api/v1/pub/${PubliciteStruct.maybeFromMap(pubItem)?.id.toString()}',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          carouselController:
                                              _model.carouselController ??=
                                                  CarouselSliderController(),
                                          options: CarouselOptions(
                                            initialPage:
                                                max(0, min(1, pub.length - 1)),
                                            viewportFraction: 0.8,
                                            disableCenter: true,
                                            enlargeCenterPage: true,
                                            enlargeFactor: 0.23,
                                            enableInfiniteScroll: true,
                                            scrollDirection: Axis.horizontal,
                                            autoPlay: true,
                                            autoPlayAnimationDuration:
                                                Duration(milliseconds: 800),
                                            autoPlayInterval: Duration(
                                                milliseconds: (800 + 2000)),
                                            autoPlayCurve: Curves.linear,
                                            pauseAutoPlayInFiniteScroll: true,
                                            onPageChanged: (index, _) => _model
                                                .carouselCurrentIndex = index,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '7j3ylgkr' /* Cryptos */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Ubuntu',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 1.0, 5.0, 16.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: (_model.apiRequestCompleter ??=
                                          Completer<ApiCallResponse>()
                                            ..complete(PegdwendeExchangeApiGroup
                                                .getCryptoApiV1CryptoGetCall
                                                .call(
                                              orderDescanding:
                                                  FFAppConstants.order,
                                              isDeleted: FFAppConstants.deleted,
                                            )))
                                      .future,
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return ShimmercryptosWidget();
                                    }
                                    final listViewGetCryptoApiV1CryptoGetResponse =
                                        snapshot.data!;

                                    return Builder(
                                      builder: (context) {
                                        final cryptos = getJsonField(
                                          listViewGetCryptoApiV1CryptoGetResponse
                                              .jsonBody,
                                          r'''$.data''',
                                        ).toList();

                                        return RefreshIndicator(
                                          onRefresh: () async {
                                            safeSetState(() => _model
                                                .apiRequestCompleter = null);
                                            await _model
                                                .waitForApiRequestCompleted();
                                          },
                                          child: ListView.separated(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: cryptos.length,
                                            separatorBuilder: (_, __) =>
                                                SizedBox(height: 9.0),
                                            itemBuilder:
                                                (context, cryptosIndex) {
                                              final cryptosItem =
                                                  cryptos[cryptosIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    CryptodetailWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'nom': serializeParam(
                                                        valueOrDefault<String>(
                                                          CryptodataStruct
                                                                  .maybeFromMap(
                                                                      cryptosItem)
                                                              ?.nom,
                                                          'nom',
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                      'quantite':
                                                          serializeParam(
                                                        CryptodataStruct
                                                                .maybeFromMap(
                                                                    cryptosItem)
                                                            ?.quantite,
                                                        ParamType.int,
                                                      ),
                                                      'prix': serializeParam(
                                                        CryptodataStruct
                                                                .maybeFromMap(
                                                                    cryptosItem)
                                                            ?.prixUnite,
                                                        ParamType.int,
                                                      ),
                                                      'contact': serializeParam(
                                                        CryptodataStruct
                                                                .maybeFromMap(
                                                                    cryptosItem)
                                                            ?.contacts,
                                                        ParamType.String,
                                                      ),
                                                      'id': serializeParam(
                                                        CryptodataStruct
                                                                .maybeFromMap(
                                                                    cryptosItem)
                                                            ?.id,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .scale,
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        duration: Duration(
                                                            milliseconds: 500),
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
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFFFF3E0),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25.0),
                                                          ),
                                                          child: Image.network(
                                                            '${FFAppConstants.urlcryptoicon}${valueOrDefault<String>(
                                                              CryptodataStruct
                                                                      .maybeFromMap(
                                                                          cryptosItem)
                                                                  ?.id
                                                                  .toString(),
                                                              'id',
                                                            )}',
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                1.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                CryptodataStruct
                                                                        .maybeFromMap(
                                                                            cryptosItem)
                                                                    ?.nom,
                                                                'nom',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'wedrez00' /* BTC */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                          ],
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 16.0)),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            CryptodataStruct
                                                                    .maybeFromMap(
                                                                        cryptosItem)
                                                                ?.quantite
                                                                .toString(),
                                                            'quantite',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            CryptodataStruct
                                                                    .maybeFromMap(
                                                                        cryptosItem)
                                                                ?.prixUnite
                                                                .toString(),
                                                            'prix',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .green,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
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
                          ].divide(SizedBox(height: 17.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
