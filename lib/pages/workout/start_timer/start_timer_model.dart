import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'start_timer_widget.dart' show StartTimerWidget;
import 'package:flutter/material.dart';

class StartTimerModel extends FlutterFlowModel<StartTimerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs1 = 225000;
  int timerMilliseconds1 = 225000;
  String timerValue1 = StopWatchTimer.getDisplayTime(
    225000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController1 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs2 = 300000;
  int timerMilliseconds2 = 300000;
  String timerValue2 = StopWatchTimer.getDisplayTime(
    300000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController2 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController1.dispose();
    timerController2.dispose();
  }
}
