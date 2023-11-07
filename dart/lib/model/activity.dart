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
        json[r'time'] == null ? null : DateTime.parse(json[r'time']);
    if (time != null && time.isUtc == false) {
      time = DateTime.parse('${json[r'time']}Z');
    }

    return Activity(
      actor: json[r'actor'],
      message: json[r'message'],
      object: json[r'object'],
      origin: json[r'origin'],
      subject: json[r'subject'] is! Map
          ? null
          : ActivityEntity.fromJson(json[r'subject']),
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

    return json.fold(<Activity>[], (List<Activity> previousValue, element) {
      final Activity? object = Activity.fromJson(element);
      if (object is Activity) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Activity> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Activity>{};
    }

    return json.entries.fold(<String, Activity>{},
        (Map<String, Activity> previousValue, element) {
      final Activity? object = Activity.fromJson(element.value);
      if (object is Activity) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Activity-objects as value to a dart map
  static Map<String, List<Activity>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Activity>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Activity>>(
          key, Activity.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Activity[actor=$actor, message=$message, object=$object, origin=$origin, subject=$subject, time=$time, title=$title, verb=$verb]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && actor != null) ||
          (keys?.contains(r'actor') ?? false))
        r'actor': actor,
      if ((keys == null && message != null) ||
          (keys?.contains(r'message') ?? false))
        r'message': message,
      if ((keys == null && object != null) ||
          (keys?.contains(r'object') ?? false))
        r'object': object,
      if ((keys == null && origin != null) ||
          (keys?.contains(r'origin') ?? false))
        r'origin': origin,
      if ((keys == null && subject != null) ||
          (keys?.contains(r'subject') ?? false))
        r'subject': subject?.toJson(),
      if ((keys == null && time != null) || (keys?.contains(r'time') ?? false))
        r'time': time?.toUtc().toIso8601String(),
      if ((keys == null && title != null) ||
          (keys?.contains(r'title') ?? false))
        r'title': title,
      if ((keys == null && verb != null) || (keys?.contains(r'verb') ?? false))
        r'verb': verb,
    };
  }
}
