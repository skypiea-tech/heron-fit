import '/components/workout_history_card/workout_history_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'workout_complete_widget.dart' show WorkoutCompleteWidget;
import 'package:flutter/material.dart';

class WorkoutCompleteModel extends FlutterFlowModel<WorkoutCompleteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for workoutHistoryCard component.
  late WorkoutHistoryCardModel workoutHistoryCardModel;

  @override
  void initState(BuildContext context) {
    workoutHistoryCardModel =
        createModel(context, () => WorkoutHistoryCardModel());
  }

  @override
  void dispose() {
    workoutHistoryCardModel.dispose();
  }
}
