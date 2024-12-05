// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkoutExercisesStruct extends BaseStruct {
  WorkoutExercisesStruct({
    String? id,
    String? workoutId,
    String? exerciseId,
    DateTime? createdAt,
  })  : _id = id,
        _workoutId = workoutId,
        _exerciseId = exerciseId,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "workout_id" field.
  String? _workoutId;
  String get workoutId => _workoutId ?? '';
  set workoutId(String? val) => _workoutId = val;

  bool hasWorkoutId() => _workoutId != null;

  // "exercise_id" field.
  String? _exerciseId;
  String get exerciseId => _exerciseId ?? '';
  set exerciseId(String? val) => _exerciseId = val;

  bool hasExerciseId() => _exerciseId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static WorkoutExercisesStruct fromMap(Map<String, dynamic> data) =>
      WorkoutExercisesStruct(
        id: data['id'] as String?,
        workoutId: data['workout_id'] as String?,
        exerciseId: data['exercise_id'] as String?,
        createdAt: data['created_at'] as DateTime?,
      );

  static WorkoutExercisesStruct? maybeFromMap(dynamic data) => data is Map
      ? WorkoutExercisesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'workout_id': _workoutId,
        'exercise_id': _exerciseId,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'workout_id': serializeParam(
          _workoutId,
          ParamType.String,
        ),
        'exercise_id': serializeParam(
          _exerciseId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static WorkoutExercisesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WorkoutExercisesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        workoutId: deserializeParam(
          data['workout_id'],
          ParamType.String,
          false,
        ),
        exerciseId: deserializeParam(
          data['exercise_id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'WorkoutExercisesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WorkoutExercisesStruct &&
        id == other.id &&
        workoutId == other.workoutId &&
        exerciseId == other.exerciseId &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, workoutId, exerciseId, createdAt]);
}

WorkoutExercisesStruct createWorkoutExercisesStruct({
  String? id,
  String? workoutId,
  String? exerciseId,
  DateTime? createdAt,
}) =>
    WorkoutExercisesStruct(
      id: id,
      workoutId: workoutId,
      exerciseId: exerciseId,
      createdAt: createdAt,
    );
