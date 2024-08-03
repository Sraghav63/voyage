import '/auth/supabase_auth/auth_util.dart';
import '/backend/gemini/gemini.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'roadmapgendash_model.dart';
export 'roadmapgendash_model.dart';

class RoadmapgendashWidget extends StatefulWidget {
  const RoadmapgendashWidget({
    super.key,
    this.starting,
  });

  final String? starting;

  @override
  State<RoadmapgendashWidget> createState() => _RoadmapgendashWidgetState();
}

class _RoadmapgendashWidgetState extends State<RoadmapgendashWidget>
    with TickerProviderStateMixin {
  late RoadmapgendashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoadmapgendashModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.theoutput = await UserinfoTable().queryRows(
        queryFn: (q) => q.eq(
          'id',
          currentUserUid,
        ),
      );
      await Future.delayed(const Duration(milliseconds: 500));
      if (_model.theoutput?.first.displayname == null ||
          _model.theoutput?.first.displayname == '') {
        context.goNamed(
          'onboarding1',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      } else {
        if (_model.theoutput?.first.question1 == null ||
            _model.theoutput?.first.question1 == '') {
          context.goNamed(
            'onboarding2CopyCopyCopy',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );
        } else {
          if (_model.theoutput?.first.mainPrompt == null ||
              _model.theoutput?.first.mainPrompt == '') {
            return;
          }

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
        }
      }
    });

    _model.testAnswerTextController ??=
        TextEditingController(text: widget.starting);
    _model.testAnswerFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
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
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 580.0.ms,
            duration: 1290.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(10.0, 10.0),
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
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
    return FutureBuilder<List<UserinfoRow>>(
      future: UserinfoTable().querySingleRow(
        queryFn: (q) => q.eq(
          'id',
          currentUserUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: const Center(
              child: SizedBox(
                width: 30.0,
                height: 30.0,
                child: SpinKitChasingDots(
                  color: Color(0xFF4D10FB),
                  size: 30.0,
                ),
              ),
            ),
          );
        }
        List<UserinfoRow> roadmapgendashUserinfoRowList = snapshot.data!;

        final roadmapgendashUserinfoRow =
            roadmapgendashUserinfoRowList.isNotEmpty
                ? roadmapgendashUserinfoRowList.first
                : null;

        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: MediaQuery.sizeOf(context).width <= 991.0
                ? AppBar(
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    automaticallyImplyLeading: false,
                    leading: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                    title: Text(
                      'Order Details',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    actions: const [],
                    centerTitle: false,
                    elevation: 0.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Container(
                      width: 270.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(0.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        2.0, 0.0, 0.0, 5.0),
                                    child: Text(
                                      'voyage.',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 12.0,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 0.0, 0.0),
                                    child: Text(
                                      'Platform Navigation',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.route,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 24.0,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Your Roadmap',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.attach_money,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Finance Help (Not Available)',
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.forum_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Community (Not Available)',
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 6.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'settings',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.settings_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Settings',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 12.0)),
                              ),
                            ),
                            Divider(
                              height: 12.0,
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              const Duration(milliseconds: 500),
                                          fadeOutDuration:
                                              const Duration(milliseconds: 500),
                                          imageUrl:
                                              'https://images.unsplash.com/photo-1640951613773-54706e06851d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8dXNlcnxlbnwwfHx8fDE3MjI0MDc3MTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                          width: 44.0,
                                          height: 44.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              roadmapgendashUserinfoRow
                                                  ?.displayname,
                                              'User Name',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              roadmapgendashUserinfoRow?.email,
                                              'user_email',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.goNamedAuth(
                                          'Login', context.mounted);
                                    },
                                    child: Icon(
                                      Icons.logout_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(
                          maxWidth: 1170.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                constraints: const BoxConstraints(
                                  maxWidth: 1170.0,
                                ),
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 0.0, 12.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 2.0, 0.0, 2.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 40.0,
                                                  icon: Icon(
                                                    Icons.home_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 22.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 8.0, 0.0),
                                                child: Icon(
                                                  Icons.chevron_right_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 16.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 16.0, 8.0),
                                                child: Container(
                                                  height: 32.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 4.0,
                                                                12.0, 4.0),
                                                    child: Text(
                                                      'Roadmap',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Your Journey',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 40.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: double.infinity,
                                    constraints: const BoxConstraints(
                                      maxWidth: 1170.0,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Welcome to Voyage.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 40.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Let\'s make your roadmap',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Form(
                                      key: _model.formKey,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 16.0),
                                        child: SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.6,
                                          child: TextFormField(
                                            controller:
                                                _model.testAnswerTextController,
                                            focusNode:
                                                _model.testAnswerFocusNode,
                                            autofocus: true,
                                            autofillHints: const [AutofillHints.name],
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Describe what your roadmap will be. Please be as accurate as possible',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              alignLabelWithHint: true,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
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
                                            minLines: 6,
                                            validator: _model
                                                .testAnswerTextControllerValidator
                                                .asValidator(context),
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
                                                    'buttonOnActionTriggerAnimation'] !=
                                                null) {
                                              await animationsMap[
                                                      'buttonOnActionTriggerAnimation']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            await UserinfoTable().update(
                                              data: {
                                                'main_prompt': _model
                                                    .testAnswerTextController
                                                    .text,
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'id',
                                                currentUserUid,
                                              ),
                                            );
                                            await geminiGenerateText(
                                              context,
                                              'you are a roadmap generator AI, here\'s your task.  Give me ONLY milestone 1 of {8} MAKE SURE YOU DONT TITLE OR USE TEXT FORMATTING LIKE BOLDING OR BULLET POINTS ONLY SIMPLE PARAGRAPHS SEPERATED BY LINE BREAKS,  You are to create a 2 year roadmap plan with each year divided into 4 3month milestones and each milestone comprising of 3-4 tasks for a first-gen student with the following data, their name is ${roadmapgendashUserinfoRow?.displayname}, their age is ${roadmapgendashUserinfoRow?.age.toString()}, their location is ${roadmapgendashUserinfoRow?.address} and their gender is ${roadmapgendashUserinfoRow?.gender}. We also went ahead and asked 3 questions for extra context, here are their answers ${roadmapgendashUserinfoRow?.question1}, ${roadmapgendashUserinfoRow?.question2} ,${roadmapgendashUserinfoRow?.question3}. The user has also submitted their actual focus for their roadmap, which is ${roadmapgendashUserinfoRow?.mainPrompt}Now using this information generate the {1} out of {8} milestones. Avoid formatting with bullet points or using bold text. Make sure you are addressing ${roadmapgendashUserinfoRow?.displayname}. Next, if the questions I have given you sound like the user is trolling or they are blank, dont answer with anything that is not academic, career, or financially themed.with the following regex pattern: \"[a-z0-9]\"',
                                            ).then((generatedText) {
                                              safeSetState(() =>
                                                  _model.geminioutput1 =
                                                      generatedText);
                                            });

                                            if (animationsMap[
                                                    'containerOnActionTriggerAnimation'] !=
                                                null) {
                                              await animationsMap[
                                                      'containerOnActionTriggerAnimation']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                            await geminiGenerateText(
                                              context,
                                              'you are a roadmap generator AI, here\'s your task.  Give me ONLY milestone 2 of {8} MAKE SURE YOU DONT TITLE OR USE TEXT FORMATTING LIKE BOLDING OR BULLET POINTS ONLY SIMPLE PARAGRAPHS SEPERATED BY LINE BREAKS,  You are to create a 2 year roadmap plan with each year divided into 4 3month milestones and each milestone comprising of 3-4 tasks for a first-gen student with the following data, their name is ${roadmapgendashUserinfoRow?.displayname}, their age is ${roadmapgendashUserinfoRow?.age.toString()}, their location is ${roadmapgendashUserinfoRow?.address} and their gender is ${roadmapgendashUserinfoRow?.gender}. We also went ahead and asked 3 questions for extra context, here are their answers ${roadmapgendashUserinfoRow?.question1}, ${roadmapgendashUserinfoRow?.question2} ,${roadmapgendashUserinfoRow?.question3}. The user has also submitted their actual focus for their roadmap, which is ${roadmapgendashUserinfoRow?.mainPrompt}Now using this information generate the {1} out of {8} milestones. Avoid formatting with bullet points or using bold text. Make sure you are addressing ${roadmapgendashUserinfoRow?.displayname}. Next, if the questions I have given you sound like the user is trolling or they are blank, dont answer with anything that is not academic, career, or financially themed.Your previous answer for other milestones were:${_model.geminioutput1}',
                                            ).then((generatedText) {
                                              safeSetState(() =>
                                                  _model.geminioutput2 =
                                                      generatedText);
                                            });

                                            await geminiGenerateText(
                                              context,
                                              'you are a roadmap generator AI, here\'s your task.  Give me ONLY milestone 3 of {8} MAKE SURE YOU DONT TITLE OR USE TEXT FORMATTING LIKE BOLDING OR BULLET POINTS ONLY SIMPLE PARAGRAPHS SEPERATED BY LINE BREAKS,  You are to create a 2 year roadmap plan with each year divided into 4 3month milestones and each milestone comprising of 3-4 tasks for a first-gen student with the following data, their name is ${roadmapgendashUserinfoRow?.displayname}, their age is ${roadmapgendashUserinfoRow?.age.toString()}, their location is ${roadmapgendashUserinfoRow?.address} and their gender is ${roadmapgendashUserinfoRow?.gender}. We also went ahead and asked 3 questions for extra context, here are their answers ${roadmapgendashUserinfoRow?.question1}, ${roadmapgendashUserinfoRow?.question2} ,${roadmapgendashUserinfoRow?.question3}. The user has also submitted their actual focus for their roadmap, which is ${roadmapgendashUserinfoRow?.mainPrompt}Now using this information generate the {1} out of {8} milestones. Avoid formatting with bullet points or using bold text. Make sure you are addressing ${roadmapgendashUserinfoRow?.displayname}. Next, if the questions I have given you sound like the user is trolling or they are blank, dont answer with anything that is not academic, career, or financially themed.Your previous answer for other milestones were:${_model.geminioutput1}and${_model.geminioutput2}',
                                            ).then((generatedText) {
                                              safeSetState(() =>
                                                  _model.geminioutput3 =
                                                      generatedText);
                                            });

                                            await geminiGenerateText(
                                              context,
                                              'you are a roadmap generator AI, here\'s your task.  Give me ONLY milestone 4 of {8} MAKE SURE YOU DONT TITLE OR USE TEXT FORMATTING LIKE BOLDING OR BULLET POINTS ONLY SIMPLE PARAGRAPHS SEPERATED BY LINE BREAKS,  You are to create a 2 year roadmap plan with each year divided into 4 3month milestones and each milestone comprising of 3-4 tasks for a first-gen student with the following data, their name is ${roadmapgendashUserinfoRow?.displayname}, their age is ${roadmapgendashUserinfoRow?.age.toString()}, their location is ${roadmapgendashUserinfoRow?.address} and their gender is ${roadmapgendashUserinfoRow?.gender}. We also went ahead and asked 3 questions for extra context, here are their answers ${roadmapgendashUserinfoRow?.question1}, ${roadmapgendashUserinfoRow?.question2} ,${roadmapgendashUserinfoRow?.question3}. The user has also submitted their actual focus for their roadmap, which is ${roadmapgendashUserinfoRow?.mainPrompt}Now using this information generate the {1} out of {8} milestones. Avoid formatting with bullet points or using bold text. Make sure you are addressing ${roadmapgendashUserinfoRow?.displayname}. Next, if the questions I have given you sound like the user is trolling or they are blank, dont answer with anything that is not academic, career, or financially themed.Your previous answer for other milestones were:${_model.geminioutput1}and ${_model.geminioutput2}and ${_model.geminioutput3}',
                                            ).then((generatedText) {
                                              safeSetState(() =>
                                                  _model.geminioutput4 =
                                                      generatedText);
                                            });

                                            await geminiGenerateText(
                                              context,
                                              'you are a roadmap generator AI, here\'s your task.  Give me ONLY milestone 5 of {8} MAKE SURE YOU DONT TITLE OR USE TEXT FORMATTING LIKE BOLDING OR BULLET POINTS ONLY SIMPLE PARAGRAPHS SEPERATED BY LINE BREAKS,  You are to create a 2 year roadmap plan with each year divided into 4 3month milestones and each milestone comprising of 3-4 tasks for a first-gen student with the following data, their name is ${roadmapgendashUserinfoRow?.displayname}, their age is ${roadmapgendashUserinfoRow?.age.toString()}, their location is ${roadmapgendashUserinfoRow?.address} and their gender is ${roadmapgendashUserinfoRow?.gender}. We also went ahead and asked 3 questions for extra context, here are their answers ${roadmapgendashUserinfoRow?.question1}, ${roadmapgendashUserinfoRow?.question2} ,${roadmapgendashUserinfoRow?.question3}. The user has also submitted their actual focus for their roadmap, which is ${roadmapgendashUserinfoRow?.mainPrompt}Now using this information generate the {1} out of {8} milestones. Avoid formatting with bullet points or using bold text. Make sure you are addressing ${roadmapgendashUserinfoRow?.displayname}. Next, if the questions I have given you sound like the user is trolling or they are blank, dont answer with anything that is not academic, career, or financially themed.Your previous answer for other milestones were:${_model.geminioutput1}and ${_model.geminioutput2}and ${_model.geminioutput3}and ${_model.geminioutput4}',
                                            ).then((generatedText) {
                                              safeSetState(() =>
                                                  _model.geminioutput5 =
                                                      generatedText);
                                            });

                                            await geminiGenerateText(
                                              context,
                                              'you are a roadmap generator AI, here\'s your task.  Give me ONLY milestone 6 of {8} MAKE SURE YOU DONT TITLE OR USE TEXT FORMATTING LIKE BOLDING OR BULLET POINTS ONLY SIMPLE PARAGRAPHS SEPERATED BY LINE BREAKS,  You are to create a 2 year roadmap plan with each year divided into 4 3month milestones and each milestone comprising of 3-4 tasks for a first-gen student with the following data, their name is ${roadmapgendashUserinfoRow?.displayname}, their age is ${roadmapgendashUserinfoRow?.age.toString()}, their location is ${roadmapgendashUserinfoRow?.address} and their gender is ${roadmapgendashUserinfoRow?.gender}. We also went ahead and asked 3 questions for extra context, here are their answers ${roadmapgendashUserinfoRow?.question1}, ${roadmapgendashUserinfoRow?.question2} ,${roadmapgendashUserinfoRow?.question3}. The user has also submitted their actual focus for their roadmap, which is ${roadmapgendashUserinfoRow?.mainPrompt}Now using this information generate the {1} out of {8} milestones. Avoid formatting with bullet points or using bold text. Make sure you are addressing ${roadmapgendashUserinfoRow?.displayname}. Next, if the questions I have given you sound like the user is trolling or they are blank, dont answer with anything that is not academic, career, or financially themed.Your previous answer for other milestones were:${_model.geminioutput1}and ${_model.geminioutput2}and ${_model.geminioutput3}and ${_model.geminioutput4}and ${_model.geminioutput5}',
                                            ).then((generatedText) {
                                              safeSetState(() =>
                                                  _model.geminioutput6 =
                                                      generatedText);
                                            });

                                            await geminiGenerateText(
                                              context,
                                              'you are a roadmap generator AI, here\'s your task.  Give me ONLY milestone 7 of {8} MAKE SURE YOU DONT TITLE OR USE TEXT FORMATTING LIKE BOLDING OR BULLET POINTS ONLY SIMPLE PARAGRAPHS SEPERATED BY LINE BREAKS,  You are to create a 2 year roadmap plan with each year divided into 4 3month milestones and each milestone comprising of 3-4 tasks for a first-gen student with the following data, their name is ${roadmapgendashUserinfoRow?.displayname}, their age is ${roadmapgendashUserinfoRow?.age.toString()}, their location is ${roadmapgendashUserinfoRow?.address} and their gender is ${roadmapgendashUserinfoRow?.gender}. We also went ahead and asked 3 questions for extra context, here are their answers ${roadmapgendashUserinfoRow?.question1}, ${roadmapgendashUserinfoRow?.question2} ,${roadmapgendashUserinfoRow?.question3}. The user has also submitted their actual focus for their roadmap, which is ${roadmapgendashUserinfoRow?.mainPrompt}Now using this information generate the {1} out of {8} milestones. Avoid formatting with bullet points or using bold text. Make sure you are addressing ${roadmapgendashUserinfoRow?.displayname}. Next, if the questions I have given you sound like the user is trolling or they are blank, dont answer with anything that is not academic, career, or financially themed.Your previous answer for other milestones were:${_model.geminioutput1}and ${_model.geminioutput2}and ${_model.geminioutput3}and ${_model.geminioutput4}and ${_model.geminioutput5}and ${_model.geminioutput6}',
                                            ).then((generatedText) {
                                              safeSetState(() =>
                                                  _model.geminioutput7 =
                                                      generatedText);
                                            });

                                            await geminiGenerateText(
                                              context,
                                              'you are a roadmap generator AI, here\'s your task.  Give me ONLY milestone 8 of {8} MAKE SURE YOU DONT TITLE OR USE TEXT FORMATTING LIKE BOLDING OR BULLET POINTS ONLY SIMPLE PARAGRAPHS SEPERATED BY LINE BREAKS,  You are to create a 2 year roadmap plan with each year divided into 4 3month milestones and each milestone comprising of 3-4 tasks for a first-gen student with the following data, their name is ${roadmapgendashUserinfoRow?.displayname}, their age is ${roadmapgendashUserinfoRow?.age.toString()}, their location is ${roadmapgendashUserinfoRow?.address} and their gender is ${roadmapgendashUserinfoRow?.gender}. We also went ahead and asked 3 questions for extra context, here are their answers ${roadmapgendashUserinfoRow?.question1}, ${roadmapgendashUserinfoRow?.question2} ,${roadmapgendashUserinfoRow?.question3}. The user has also submitted their actual focus for their roadmap, which is ${roadmapgendashUserinfoRow?.mainPrompt}Now using this information generate the {1} out of {8} milestones. Avoid formatting with bullet points or using bold text. Make sure you are addressing ${roadmapgendashUserinfoRow?.displayname}. Next, if the questions I have given you sound like the user is trolling or they are blank, dont answer with anything that is not academic, career, or financially themed.Your previous answer for other milestones were:${_model.geminioutput1}and ${_model.geminioutput2}and ${_model.geminioutput3}and ${_model.geminioutput4}and ${_model.geminioutput5}and ${_model.geminioutput6}and ${_model.geminioutput7}',
                                            ).then((generatedText) {
                                              safeSetState(() =>
                                                  _model.geminioutput8 =
                                                      generatedText);
                                            });

                                            await UserinfoTable().update(
                                              data: {
                                                'mile1': _model.geminioutput1,
                                                'mile2': _model.geminioutput2,
                                                'mile3': _model.geminioutput3,
                                                'mile4': _model.geminioutput4,
                                                'mile5': _model.geminioutput5,
                                                'mile6': _model.geminioutput6,
                                                'mile7': _model.geminioutput7,
                                                'mile8': _model.geminioutput8,
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'id',
                                                roadmapgendashUserinfoRow?.id,
                                              ),
                                            );

                                            context.pushNamed(
                                              'HomePageCopy',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );

                                            setState(() {});
                                          },
                                          text: 'Lets go!',
                                          options: FFButtonOptions(
                                            width: 326.0,
                                            height: 53.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0x40323232),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'buttonOnActionTriggerAnimation']!,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                                  .animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation']!)
                                  .animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation']!,
                                  ),
                            ],
                          ),
                        ),
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
  }
}
