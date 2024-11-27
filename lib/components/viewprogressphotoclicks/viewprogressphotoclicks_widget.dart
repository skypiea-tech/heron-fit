import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'viewprogressphotoclicks_model.dart';
export 'viewprogressphotoclicks_model.dart';

class ViewprogressphotoclicksWidget extends StatefulWidget {
  const ViewprogressphotoclicksWidget({super.key});

  @override
  State<ViewprogressphotoclicksWidget> createState() =>
      _ViewprogressphotoclicksWidgetState();
}

class _ViewprogressphotoclicksWidgetState
    extends State<ViewprogressphotoclicksWidget> {
  late ViewprogressphotoclicksModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewprogressphotoclicksModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Slider(
              activeColor: FlutterFlowTheme.of(context).primary,
              inactiveColor: FlutterFlowTheme.of(context).alternate,
              min: 0.0,
              max: 10.0,
              value: _model.sliderValue ??= 5.0,
              onChanged: (newValue) {
                newValue = double.parse(newValue.toStringAsFixed(2));
                safeSetState(() => _model.sliderValue = newValue);
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: FutureBuilder<List<UpdateWeightRow>>(
              future: UpdateWeightTable().queryRows(
                queryFn: (q) => q.order('id'),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: SpinKitPulse(
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 50.0,
                      ),
                    ),
                  );
                }
                List<UpdateWeightRow> listViewUpdateWeightRowList =
                    snapshot.data!;

                return ListView.separated(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: listViewUpdateWeightRowList.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 7.0),
                  itemBuilder: (context, listViewIndex) {
                    final listViewUpdateWeightRow =
                        listViewUpdateWeightRowList[listViewIndex];
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                listViewUpdateWeightRow.pic!,
                                width: 200.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
