import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'testt_widget.dart' show TesttWidget;
import 'package:flutter/material.dart';

class TesttModel extends FlutterFlowModel<TesttWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    listViewController?.dispose();
  }
}
