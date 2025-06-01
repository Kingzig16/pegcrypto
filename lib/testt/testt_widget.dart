import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/backend/schema/structs/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'testt_model.dart';
export 'testt_model.dart';

class TesttWidget extends StatefulWidget {
  const TesttWidget({super.key});

  static String routeName = 'testt';
  static String routePath = 'testt';

  @override
  State<TesttWidget> createState() => _TesttWidgetState();
}

class _TesttWidgetState extends State<TesttWidget> {
  late TesttModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TesttModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 1000),
        callback: (timer) async {
          await _model.listViewController?.animateTo(
            _model.listViewController!.position.maxScrollExtent,
            duration: Duration(milliseconds: 100),
            curve: Curves.ease,
          );
        },
        startImmediately: true,
      );
    });

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
          title: Text(
            FFLocalizations.of(context).getText(
              'tvwbygsy' /* Page Title */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FutureBuilder<ApiCallResponse>(
                future:
                    PegdwendeExchangeApiGroup.getAllPubApiV1PubGetCall.call(),
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
                  final carouselGetAllPubApiV1PubGetResponse = snapshot.data!;

                  return Builder(
                    builder: (context) {
                      final pub = getJsonField(
                        carouselGetAllPubApiV1PubGetResponse.jsonBody,
                        r'''$.data''',
                      ).toList();

                      return Container(
                        width: double.infinity,
                        height: 200.0,
                        child: CarouselSlider.builder(
                          itemCount: pub.length,
                          itemBuilder: (context, pubIndex, _) {
                            final pubItem = pub[pubIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
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
                                  borderRadius: BorderRadius.circular(8.0),
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
                          carouselController: _model.carouselController ??=
                              CarouselSliderController(),
                          options: CarouselOptions(
                            initialPage: max(0, min(1, pub.length - 1)),
                            viewportFraction: 0.5,
                            disableCenter: true,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.25,
                            enableInfiniteScroll: true,
                            scrollDirection: Axis.horizontal,
                            autoPlay: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayInterval:
                                Duration(milliseconds: (800 + 2000)),
                            autoPlayCurve: Curves.linear,
                            pauseAutoPlayInFiniteScroll: true,
                            onPageChanged: (index, _) =>
                                _model.carouselCurrentIndex = index,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: BoxDecoration(),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://picsum.photos/seed/422/600',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                  controller: _model.listViewController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
