import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'chat_bubble_model.dart';
export 'chat_bubble_model.dart';

class ChatBubbleWidget extends StatefulWidget {
  const ChatBubbleWidget({super.key});

  @override
  State<ChatBubbleWidget> createState() => _ChatBubbleWidgetState();
}

class _ChatBubbleWidgetState extends State<ChatBubbleWidget> {
  late ChatBubbleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatBubbleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    16.0,
                    valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width < kBreakpointSmall
                          ? 20.0
                          : 30.0,
                      30.0,
                    ),
                    20.0,
                    valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width < kBreakpointSmall
                          ? 20.0
                          : 30.0,
                      30.0,
                    )),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 850.0,
                  ),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 26.0,
                              height: 26.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: Image.asset(
                                    'assets/images/ff_mascot_2.png',
                                  ).image,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'quagp2ky' /* Flash Mascot */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.chat_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            Expanded(
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'nrtzrly8' /* Sarah McFlash */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    16.0,
                    valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width < kBreakpointSmall
                          ? 20.0
                          : 30.0,
                      30.0,
                    ),
                    20.0,
                    valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width < kBreakpointSmall
                          ? 20.0
                          : 30.0,
                      30.0,
                    )),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 850.0,
                  ),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.asset(
                                  'assets/images/google-gemini-icon.png',
                                ).image,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'jflqy9cz' /* Assistant Emotionnel */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.chat_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            Expanded(
                              child: MarkdownBody(
                                data: '''# Markdown\n---\n\n**Hello** World!''',
                                selectable: false,
                                onTapLink: (_, url, __) => launchURL(url!),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
