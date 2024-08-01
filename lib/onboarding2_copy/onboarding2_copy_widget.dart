import '/auth/supabase_auth/auth_util.dart';
import '/backend/gemini/gemini.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'onboarding2_copy_model.dart';
export 'onboarding2_copy_model.dart';

class Onboarding2CopyWidget extends StatefulWidget {
  const Onboarding2CopyWidget({
    super.key,
    required this.geminipass,
  });

  final String? geminipass;

  @override
  State<Onboarding2CopyWidget> createState() => _Onboarding2CopyWidgetState();
}

class _Onboarding2CopyWidgetState extends State<Onboarding2CopyWidget>
    with TickerProviderStateMixin {
  late Onboarding2CopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding2CopyModel());

    _model.testAnswerTextController ??= TextEditingController();
    _model.testAnswerFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1120.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(10.0, 10.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textFieldOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1120.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(10.0, 10.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 310.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1120.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(10.0, 10.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'onboarding2Copy',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 63.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        32.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'voyage.',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 120.0, 0.0, 10.0),
                                            child: Text(
                                              'Welcome to your voyage.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 60.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'Let\'s get to know each other better, feel free to skip or answer in your own terms :)',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      200.0, 50.0, 200.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.geminipass,
                                      'What are your top 3 worries about studying abroad? And flip side - what amazing things do you hope to achieve while you\'re here?',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                  )
                                      .animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation']!)
                                      .animateOnActionTrigger(
                                        animationsMap[
                                            'textOnActionTriggerAnimation']!,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 16.0),
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  child: TextFormField(
                                    controller: _model.testAnswerTextController,
                                    focusNode: _model.testAnswerFocusNode,
                                    autofocus: true,
                                    autofillHints: const [AutofillHints.password],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Your answer here',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      alignLabelWithHint: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    textAlign: TextAlign.start,
                                    maxLines: null,
                                    minLines: 3,
                                    validator: _model
                                        .testAnswerTextControllerValidator
                                        .asValidator(context),
                                  ),
                                )
                                    .animateOnPageLoad(animationsMap[
                                        'textFieldOnPageLoadAnimation']!)
                                    .animateOnActionTrigger(
                                      animationsMap[
                                          'textFieldOnActionTriggerAnimation']!,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (animationsMap[
                                          'textOnActionTriggerAnimation'] !=
                                      null) {
                                    await animationsMap[
                                            'textOnActionTriggerAnimation']!
                                        .controller
                                        .forward(from: 0.0);
                                  }
                                  if (animationsMap[
                                          'textFieldOnActionTriggerAnimation'] !=
                                      null) {
                                    await animationsMap[
                                            'textFieldOnActionTriggerAnimation']!
                                        .controller
                                        .forward(from: 0.0);
                                  }
                                  if (animationsMap[
                                          'buttonOnActionTriggerAnimation'] !=
                                      null) {
                                    await animationsMap[
                                            'buttonOnActionTriggerAnimation']!
                                        .controller
                                        .forward(from: 0.0);
                                  }
                                  await UserinfoTable().update(
                                    data: {
                                      'question2':
                                          'question: ${widget.geminipass} | answer: ${_model.testAnswerTextController.text}',
                                    },
                                    matchingRows: (rows) => rows.eq(
                                      'id',
                                      currentUserUid,
                                    ),
                                  );
                                  await geminiGenerateText(
                                    context,
                                    'you are an AI model that is responsible for creating a roadmap for a first-gen student. The first question you have asked is: \"${widget.geminipass}\", now based on what the user responds, I need you to tell me another question so that my AI model can create a better roadmap with good context. If the user responds with a blank or with an answer that doesnt follow context, then ask another question regardless of what the user has responded with. Only respond with another question if the user answer is with context to the question i have provided you. The answer from the user was: \"${_model.testAnswerTextController.text}\". Respond in 1-2 sentences taking into account what the user has said to your question. This is also your last question to ask, so dont ask a follow up after this.',
                                  ).then((generatedText) {
                                    safeSetState(() =>
                                        _model.geminioutput2 = generatedText);
                                  });

                                  context.goNamed(
                                    'onboarding2CopyCopy',
                                    queryParameters: {
                                      'geminipass2': serializeParam(
                                        _model.geminioutput2,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );

                                  setState(() {});
                                },
                                text: 'Continue',
                                options: FFButtonOptions(
                                  width: 336.0,
                                  height: 44.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0x40323232),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              )
                                  .animateOnPageLoad(animationsMap[
                                      'buttonOnPageLoadAnimation']!)
                                  .animateOnActionTrigger(
                                    animationsMap[
                                        'buttonOnActionTriggerAnimation']!,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
