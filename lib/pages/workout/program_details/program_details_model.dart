import '/components/exercise_card/exercise_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'program_details_widget.dart' show ProgramDetailsWidget;
import 'package:flutter/material.dart';

class ProgramDetailsModel extends FlutterFlowModel<ProgramDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for exerciseCard component.
  late ExerciseCardModel exerciseCardModel1;
  // Model for exerciseCard component.
  late ExerciseCardModel exerciseCardModel2;
  // Model for exerciseCard component.
  late ExerciseCardModel exerciseCardModel3;
  // Model for exerciseCard component.
  late ExerciseCardModel exerciseCardModel4;
  // Model for exerciseCard component.
  late ExerciseCardModel exerciseCardModel5;

  @override
  void initState(BuildContext context) {
    exerciseCardModel1 = createModel(context, () => ExerciseCardModel());
    exerciseCardModel2 = createModel(context, () => ExerciseCardModel());
    exerciseCardModel3 = createModel(context, () => ExerciseCardModel());
    exerciseCardModel4 = createModel(context, () => ExerciseCardModel());
    exerciseCardModel5 = createModel(context, () => ExerciseCardModel());
  }

  @override
  void dispose() {
    exerciseCardModel1.dispose();
    exerciseCardModel2.dispose();
    exerciseCardModel3.dispose();
    exerciseCardModel4.dispose();
    exerciseCardModel5.dispose();
  }
}
