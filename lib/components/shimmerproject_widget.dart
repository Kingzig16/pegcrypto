import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'shimmerproject_model.dart';
export 'shimmerproject_model.dart';

class ShimmerprojectWidget extends StatefulWidget {
  const ShimmerprojectWidget({super.key});

  @override
  State<ShimmerprojectWidget> createState() => _ShimmerprojectWidgetState();
}

class _ShimmerprojectWidgetState extends State<ShimmerprojectWidget>
    with TickerProviderStateMixin {
  late ShimmerprojectModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShimmerprojectModel());

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Material(
          color: Colors.transparent,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.32,
            height: MediaQuery.sizeOf(context).height * 0.2,
            decoration: BoxDecoration(
              color: Color(0xFFB9BABD),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: MediaQuery.sizeOf(context).height * 0.09,
                    decoration: BoxDecoration(
                      color: Color(0xFFAFB1B2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.32,
            height: MediaQuery.sizeOf(context).height * 0.2,
            decoration: BoxDecoration(
              color: Color(0xFFB9BABD),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: MediaQuery.sizeOf(context).height * 0.09,
                    decoration: BoxDecoration(
                      color: Color(0xFFAFB1B2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.32,
            height: MediaQuery.sizeOf(context).height * 0.2,
            decoration: BoxDecoration(
              color: Color(0xFFB9BABD),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: MediaQuery.sizeOf(context).height * 0.09,
                    decoration: BoxDecoration(
                      color: Color(0xFFAFB1B2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ].divide(SizedBox(width: 2.0)),
    ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!);
  }
}
