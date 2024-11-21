import '/components/day_label_component/day_label_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'calendar_component_model.dart';
export 'calendar_component_model.dart';

class CalendarComponentWidget extends StatefulWidget {
  const CalendarComponentWidget({super.key});

  @override
  State<CalendarComponentWidget> createState() =>
      _CalendarComponentWidgetState();
}

class _CalendarComponentWidgetState extends State<CalendarComponentWidget> {
  late CalendarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.0,
      height: 340.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelLargeFamily),
                          ),
                    ),
                    Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ].divide(const SizedBox(width: 4.0)),
                ),
              ),
              Icon(
                Icons.restart_alt,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 34.0,
              ),
            ].addToStart(const SizedBox(width: 24.0)).addToEnd(const SizedBox(width: 24.0)),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                wrapWithModel(
                  model: _model.dayLabelComponentModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Mon',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Tue',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Wed',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Thu',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Fri',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel6,
                  updateCallback: () => safeSetState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Sat',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel7,
                  updateCallback: () => safeSetState(() {}),
                  child: const DayLabelComponentWidget(
                    day: 'Sun',
                  ),
                ),
              ],
            ),
          ),
        ].addToStart(const SizedBox(height: 16.0)),
      ),
    );
  }
}
