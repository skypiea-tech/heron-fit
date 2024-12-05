import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/modals/rest_timer_modal/rest_timer_modal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'set_row_model.dart';
export 'set_row_model.dart';

class SetRowWidget extends StatefulWidget {
  const SetRowWidget({
    super.key,
    this.setNum,
    this.previousWeight,
    this.reps,
    this.weight,
    bool? completed,
    this.workoutID,
    this.exerciseID,
    this.restTimer,
  }) : completed = completed ?? false;

  final int? setNum;
  final int? previousWeight;
  final int? reps;
  final int? weight;
  final bool completed;
  final String? workoutID;
  final String? exerciseID;
  final int? restTimer;

  @override
  State<SetRowWidget> createState() => _SetRowWidgetState();
}

class _SetRowWidgetState extends State<SetRowWidget> {
  late SetRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetRowModel());

    _model.weightTextController ??=
        TextEditingController(text: widget.weight?.toString());
    _model.weightFocusNode ??= FocusNode();
    _model.weightFocusNode!.addListener(() => safeSetState(() {}));
    _model.repsTextController ??=
        TextEditingController(text: widget.reps?.toString());
    _model.repsFocusNode ??= FocusNode();
    _model.repsFocusNode!.addListener(() => safeSetState(() {}));
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40.0,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
          ),
          child: Text(
            valueOrDefault<String>(
              widget.setNum.toString(),
              '1',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                  color: FlutterFlowTheme.of(context).primary,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).labelMediumFamily),
                ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(),
          child: SizedBox(
            width: 60.0,
            child: TextFormField(
              controller: _model.weightTextController,
              focusNode: _model.weightFocusNode,
              autofocus: true,
              readOnly: _model.checkboxValue == true,
              obscureText: false,
              decoration: InputDecoration(
                isDense: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondary,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).tertiary,
              ),
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelSmallFamily),
                  ),
              textAlign: TextAlign.center,
              maxLength: 3,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              buildCounter: (context,
                      {required currentLength,
                      required isFocused,
                      maxLength}) =>
                  null,
              keyboardType: TextInputType.number,
              validator:
                  _model.weightTextControllerValidator.asValidator(context),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]'))
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(),
          child: SizedBox(
            width: 60.0,
            child: TextFormField(
              controller: _model.repsTextController,
              focusNode: _model.repsFocusNode,
              autofocus: true,
              readOnly: _model.checkboxValue == true,
              obscureText: false,
              decoration: InputDecoration(
                isDense: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondary,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).tertiary,
              ),
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelSmallFamily),
                  ),
              textAlign: TextAlign.center,
              maxLength: 3,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              buildCounter: (context,
                      {required currentLength,
                      required isFocused,
                      maxLength}) =>
                  null,
              keyboardType: TextInputType.number,
              validator:
                  _model.repsTextControllerValidator.asValidator(context),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]'))
              ],
            ),
          ),
        ),
        Builder(
          builder: (context) => Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: FlutterFlowTheme.of(context).tertiary,
            ),
            child: Checkbox(
              value: _model.checkboxValue ??= widget.completed,
              onChanged: (newValue) async {
                safeSetState(() => _model.checkboxValue = newValue!);
                if (newValue!) {
                  await SetsTable().update(
                    data: {
                      'completed': _model.checkboxValue,
                      'reps': int.tryParse(_model.repsTextController.text),
                      'weight': int.tryParse(_model.weightTextController.text),
                    },
                    matchingRows: (rows) => rows
                        .eqOrNull(
                          'workout_id',
                          widget.workoutID,
                        )
                        .eqOrNull(
                          'exercise_id',
                          widget.exerciseID,
                        )
                        .eqOrNull(
                          'set_number',
                          widget.setNum,
                        ),
                  );
                  HapticFeedback.lightImpact();
                  await showDialog(
                    context: context,
                    builder: (dialogContext) {
                      return Dialog(
                        elevation: 0,
                        insetPadding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        alignment: const AlignmentDirectional(0.0, 0.0)
                            .resolve(Directionality.of(context)),
                        child: const RestTimerModalWidget(),
                      );
                    },
                  );
                }
              },
              side: BorderSide(
                width: 2,
                color: FlutterFlowTheme.of(context).tertiary,
              ),
              activeColor: FlutterFlowTheme.of(context).secondary,
              checkColor: FlutterFlowTheme.of(context).alternate,
            ),
          ),
        ),
      ],
    );
  }
}
