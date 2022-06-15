//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Activity {
  /// Returns a new [Activity] instance.
  Activity({
    this.actor,
    this.message,
    this.object,
    this.origin,
    this.subject,
    this.time,
    this.title,
    this.verb,
  });

  /// Returns a new [Activity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Activity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? time =
        json[r'time'] is String ? DateTime.parse(json[r'time']) : null;
    if (time is DateTime && time.isUtc == false) {
      time = DateTime.parse('${json[r'time']}Z');
    }

    return Activity(
      actor: json[r'actor'],
      message: json[r'message'],
      object: json[r'object'],
      origin: json[r'origin'],
      subject: ActivityEntity.fromJson(json[r'subject']),
      time: time,
      title: json[r'title'],
      verb: json[r'verb'],
    );
  }

  String? actor;

  String? message;

  String? object;

  String? origin;

  ActivityEntity? subject;

  DateTime? time;

  String? title;

  String? verb;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Activity &&
        other.actor == actor &&
        other.message == message &&
        other.object == object &&
        other.origin == origin &&
        other.subject == subject &&
        other.time == time &&
        other.title == title &&
        other.verb == verb;
  }

  @override
  int get hashCode =>
      (actor == null ? 0 : actor.hashCode) +
      (message == null ? 0 : message.hashCode) +
      (object == null ? 0 : object.hashCode) +
      (origin == null ? 0 : origin.hashCode) +
      (subject == null ? 0 : subject.hashCode) +
      (time == null ? 0 : time.hashCode) +
      (title == null ? 0 : title.hashCode) +
      (verb == null ? 0 : verb.hashCode);

  static List<Activity> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Activity>[];
    }
    return json
        .map((value) {
          return Activity.fromJson(value);
        })
        .whereType<Activity>()
        .toList();
  }

  static Map<String, Activity> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Activity>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Activity?>(key, Activity.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Activity>;
  }

  // maps a json object with a list of Activity-objects as value to a dart map
  static Map<String, List<Activity>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Activity>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Activity.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Activity[actor=$actor, message=$message, object=$object, origin=$origin, subject=$subject, time=$time, title=$title, verb=$verb]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (actor != null) r'actor': actor,
      if (message != null) r'message': message,
      if (object != null) r'object': object,
      if (origin != null) r'origin': origin,
      if (subject != null) r'subject': subject,
      if (time != null) r'time': time!.toUtc().toIso8601String(),
      if (title != null) r'title': title,
      if (verb != null) r'verb': verb,
    };
  }
}
