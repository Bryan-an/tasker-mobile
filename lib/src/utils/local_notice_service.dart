import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz_data;
import 'package:timezone/timezone.dart' as tz;

class LocalNoticeService {
  final _localNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> setup() async {
    const androidSetting = AndroidInitializationSettings('@drawable/check');
    const initSettings = InitializationSettings(android: androidSetting);

    await _localNotificationsPlugin.initialize(initSettings).then((_) {
      debugPrint('setupPlugin: setup success');
    }).catchError((Object error) {
      debugPrint('Error: $error');
    });
  }

  Future<void> addNotification({
    required int time,
    required String channel,
    String? title,
    String? body,
    int? id,
  }) async {
    tz_data.initializeTimeZones();

    final scheduleTime = tz.TZDateTime.fromMillisecondsSinceEpoch(
      tz.local,
      time,
    );

    final androidDetail = AndroidNotificationDetails(
      channel, // channel Id
      channel, // channel Name
    );

    final noticeDetail = NotificationDetails(android: androidDetail);

    await _localNotificationsPlugin.zonedSchedule(
      id ?? 0,
      title,
      body,
      scheduleTime,
      noticeDetail,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  void cancelAllNotifications() async {
    await _localNotificationsPlugin.cancelAll();
  }

  void cancelNotificationById(int id) async {
    await _localNotificationsPlugin.cancel(id);
  }
}
