//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Activity {
  /// Returns a new [Activity] instance.
  Activity({
    this.actor,
    this.context,
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
  static Activity? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Activity(
      actor: json[r'actor'],
      context: json[r'context'] == null
          ? null
          : Map<String, Object?>.from(json[r'context']),
      message: json[r'message'],
      object: json[r'object'],
      origin: json[r'origin'],
      subject: ActivityEntity.fromJson(json[r'subject']),
      time: mapToDateTime(json[r'time']),
      title: json[r'title'],
      verb: json[r'verb'],
    );
  }

  String? actor;

  Map<String, Object?>? context;

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
        DeepCollectionEquality.unordered().equals(context, other.context) &&
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
      (context == null ? 0 : context.hashCode) +
      (message == null ? 0 : message.hashCode) +
      (object == null ? 0 : object.hashCode) +
      (origin == null ? 0 : origin.hashCode) +
      (subject == null ? 0 : subject.hashCode) +
      (time == null ? 0 : time.hashCode) +
      (title == null ? 0 : title.hashCode) +
      (verb == null ? 0 : verb.hashCode);

  static List<Activity> listFromJson(Iterable? json) {
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
      'Activity[actor=$actor, context=$context, message=$message, object=$object, origin=$origin, subject=$subject, time=$time, title=$title, verb=$verb]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'actor')) r'actor': actor,
      if (keys == null || keys.contains(r'context')) r'context': context,
      if (keys == null || keys.contains(r'message')) r'message': message,
      if (keys == null || keys.contains(r'object')) r'object': object,
      if (keys == null || keys.contains(r'origin')) r'origin': origin,
      if (keys == null ||
          keys.any((key) => RegExp(r'^subject\.').hasMatch(key)))
        r'subject': subject?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^subject\.'))) {
            previousValue.add(element.split(RegExp(r'^subject\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'time'))
        r'time': time?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'title')) r'title': title,
      if (keys == null || keys.contains(r'verb')) r'verb': verb,
    };
  }
}
