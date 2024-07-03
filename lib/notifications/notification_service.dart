import 'dart:async';
import 'dart:developer';
import 'dart:math' as math;

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/router.dart';

class NotificationService {
  final channelKey = 'basic_channel';
  final channelName = 'Basic channel group';
  initialize() async {
    AwesomeNotifications().initialize(
        // set the icon to null if you want to use the default app icon
        null,
        [
          NotificationChannel(
              channelGroupKey: 'basic_channel_group',
              channelKey: 'basic_channel',
              channelName: 'Basic notifications',
              channelDescription: 'Notification channel for basic tests',
              defaultColor: Colors.blue,
              ledColor: Colors.white)
        ],
        // Channel groups are only visual and are not required
        channelGroups: [
          NotificationChannelGroup(
              channelGroupKey: channelKey, channelGroupName: channelName)
        ],
        debug: true);

    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  createNotification({Duration? delayTime}) async {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 2, channelKey: channelKey, body: 'test', title: 'test here'));
    log('notification scheduled');
  }

  progressNotification(int maxValue, NotificationAction action,
      {Map? data}) async {
    double max = maxValue.toDouble();
    double currentVal = 0;
    // because the values can be only from 0 - 100, we make the step
    // fit in this constraint
    double step = 100 / max;

    String progressTitle = '';
    String endTitle = '';
    Map<String, String?> payload = {};

    switch (action) {
      case NotificationAction.navigateShip:
        progressTitle = NotificationType.navigateShip(
            data?['shipName'] ?? '', data?['destination']);
        endTitle = NotificationType.endNavigationShip(
            data?['shipName'] ?? '', data?['destination']);
        payload = {
          'action': NotificationAction.navigateShip.name,
          'shipName': data?['shipName']
        };
    }

    int id = math.Random().nextInt(150);

    Timer.periodic(
      1.sec,
      (timer) {
        if (currentVal >= 100) {
          AwesomeNotifications().cancel(id);
          AwesomeNotifications().createNotification(
            content: NotificationContent(
                id: id,
                channelKey: channelKey,
                title: endTitle,
                body: '',
                category: NotificationCategory.Reminder,
                notificationLayout: NotificationLayout.Default,
                payload: payload,
                locked: true),
          );
          timer.cancel();
        } else {
          AwesomeNotifications().createNotification(
            content: NotificationContent(
                id: id,
                progress: currentVal,
                channelKey: channelKey,
                title: progressTitle,
                body: '',
                category: NotificationCategory.Progress,
                notificationLayout: NotificationLayout.ProgressBar,
                locked: true),
          );
        }
        currentVal += step;
      },
    );
  }

  /// Use this method to detect when a new notification or a schedule is created
  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Your code goes here
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    Map<String, String?>? payload = receivedAction.payload;
    if (payload == null) return;

    var context = router.routerDelegate.navigatorKey.currentContext;
    NotificationAction action =
        NotificationAction.values.asNameMap()[payload['action']]!;

    switch (action) {
      case NotificationAction.navigateShip:
        context!.push('/shipDetails', extra: payload['shipName']);
    }
    // Navigate into pages, avoiding to open the notification details page over another details page already opened
    // router.routerDelegate.navigatorKey.currentState?.pushNamedAndRemoveUntil(
    //     '/notification-page',
    //     (route) =>
    //         (route.settings.name != '/notification-page') || route.isFirst,
    //     arguments: receivedAction);
  }
}

class NotificationType {
  static navigateShip(String shipName, String destination) {
    return 'Ship $shipName is in transit to $destination';
  }

  static endNavigationShip(String shipName, String destination) {
    return 'Ship $shipName has arrived to $destination';
  }
}

enum NotificationAction {
  navigateShip,
}
