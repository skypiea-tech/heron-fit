import '/components/notification_item/notification_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for notificationItem component.
  late NotificationItemModel notificationItemModel;

  @override
  void initState(BuildContext context) {
    notificationItemModel = createModel(context, () => NotificationItemModel());
  }

  @override
  void dispose() {
    notificationItemModel.dispose();
  }
}
