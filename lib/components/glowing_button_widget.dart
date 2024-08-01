import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'glowing_button_model.dart';
export 'glowing_button_model.dart';

class GlowingButtonWidget extends StatefulWidget {
  const GlowingButtonWidget({
    super.key,
    String? buttonText,
  }) : buttonText = buttonText ?? 'Button Text';

  final String buttonText;

  @override
  State<GlowingButtonWidget> createState() => _GlowingButtonWidgetState();
}

class _GlowingButtonWidgetState extends State<GlowingButtonWidget> {
  late GlowingButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GlowingButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      constraints: const BoxConstraints(
        maxHeight: 56.0,
      ),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 20.0,
            color: Color(0x804B39EF),
            offset: Offset(
              0.0,
              9.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(1000.0),
      ),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.5,
              color: Color(0x4A4B39EF),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(1000.0),
        ),
        child: Container(
          height: 100.0,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 1.5,
                color: Color(0x344B39EF),
                offset: Offset(
                  0.0,
                  0.5,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(1000.0),
          ),
          child: FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: widget.buttonText,
            options: FFButtonOptions(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 56.0,
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Readex Pro',
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
              elevation: 0.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0.0,
              ),
              borderRadius: BorderRadius.circular(1000.0),
            ),
          ),
        ),
      ),
    );
  }
}
