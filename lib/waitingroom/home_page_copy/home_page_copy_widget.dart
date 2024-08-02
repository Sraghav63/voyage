import '/auth/supabase_auth/auth_util.dart';
import '/backend/gemini/gemini.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_page_copy_model.dart';
export 'home_page_copy_model.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({super.key});

  @override
  State<HomePageCopyWidget> createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget>
    with TickerProviderStateMixin {
  late HomePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.thisisit = await UserinfoTable().queryRows(
        queryFn: (q) => q.eq(
          'id',
          currentUserUid,
        ),
      );
      await geminiGenerateText(
        context,
        'Create a pretty short & concise formal title for this text: ${_model.thisisit?.first.mile1}',
      ).then((generatedText) {
        safeSetState(() => _model.gemoutput1 = generatedText);
      });

      await geminiGenerateText(
        context,
        'Create a pretty short & concise formal title for this text: ${_model.thisisit?.first.mile2}',
      ).then((generatedText) {
        safeSetState(() => _model.gemoutput2 = generatedText);
      });

      await geminiGenerateText(
        context,
        'Create a pretty short & concise formal title for this text: ${_model.thisisit?.first.mile3}',
      ).then((generatedText) {
        safeSetState(() => _model.gemoutput3 = generatedText);
      });

      await geminiGenerateText(
        context,
        'Create a pretty short & concise formal title for this text: ${_model.thisisit?.first.mile4}',
      ).then((generatedText) {
        safeSetState(() => _model.gemoutput4 = generatedText);
      });

      await geminiGenerateText(
        context,
        'Create a pretty short & concise formal title for this text: ${_model.thisisit?.first.mile5}',
      ).then((generatedText) {
        safeSetState(() => _model.gemoutput5 = generatedText);
      });

      await geminiGenerateText(
        context,
        'Create a pretty short & concise formal title for this text: ${_model.thisisit?.first.mile6}',
      ).then((generatedText) {
        safeSetState(() => _model.gemoutput6 = generatedText);
      });

      await geminiGenerateText(
        context,
        'Create a pretty short & concise formal title for this text: ${_model.thisisit?.first.mile7}',
      ).then((generatedText) {
        safeSetState(() => _model.gemoutput7 = generatedText);
      });

      await geminiGenerateText(
        context,
        'Create a pretty short & concise formal title for this text: ${_model.thisisit?.first.mile8}',
      ).then((generatedText) {
        safeSetState(() => _model.gemoutput8 = generatedText);
      });

      await UserinfoTable().update(
        data: {
          'title1': _model.gemoutput1,
          'title2': _model.gemoutput2,
          'title3': _model.gemoutput3,
          'title4': _model.gemoutput4,
          'title5': _model.gemoutput5,
          'title6': _model.gemoutput6,
          'title7': _model.gemoutput7,
          'title8': _model.gemoutput8,
        },
        matchingRows: (rows) => rows.eq(
          'id',
          currentUserUid,
        ),
      );

      context.pushNamed(
        'app',
        extra: <String, dynamic>{
          kTransitionInfoKey: const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    });

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/voyage._(2).png',
                    width: 1579.0,
                    height: 560.0,
                    fit: BoxFit.fitWidth,
                    alignment: const Alignment(0.0, 0.0),
                  ),
                ),
              ),
              GradientText(
                'our AI is at work',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 50.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
                colors: const [Color(0xFF9051F1), Color(0xFF1A75C9)],
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
              Text(
                'just a moment..',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 30.0,
                      letterSpacing: 0.0,
                    ),
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
            ],
          ),
        ),
      ),
    );
  }
}
