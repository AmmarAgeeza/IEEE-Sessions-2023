//In Flutter, every Scrollable sends Notifications that contain information about the current scroll state.
// So to catch these notifications we use NotificationListener Widget.
// NotificationListener Widget will listen for Notifications bubbling up the tree.
import 'package:flutter/material.dart';

class DefaultEdgeNotificationListener extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTop;
  final VoidCallback? onBottom;

  const DefaultEdgeNotificationListener({
    Key? key,
    required this.child,
    this.onTop,
    this.onBottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      child: child,
      onNotification: (ScrollNotification notification) {
        if (notification.metrics.atEdge) {
          if (notification.metrics.pixels == 0) {
            if (onTop != null) {
              onTop!.call();
            }
          } else {
            if (onBottom != null) {
              onBottom!.call();
            }
          }
        }
        return true;
      },
    );
  }
}
