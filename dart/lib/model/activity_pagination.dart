//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ActivityPagination {
  /// Returns a new [ActivityPagination] instance.
  ActivityPagination({
    this.duration,
    this.next,
    this.unseen,
    this.unread,
    this.results,
  });

  /// Returns a new [ActivityPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ActivityPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ActivityPagination(
      duration: json[r'duration'],
      next: json[r'next'],
      unseen: json[r'unseen'],
      unread: json[r'unread'],
      results: Activity.listFromJson(json[r'results']),
    );
  }

  String? duration;

  String? next;

  int? unseen;

  int? unread;

  List<Activity>? results;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ActivityPagination &&
        other.duration == duration &&
        other.next == next &&
        other.unseen == unseen &&
        other.unread == unread &&
        DeepCollectionEquality.unordered().equals(results, other.results);
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (next == null ? 0 : next.hashCode) +
      (unseen == null ? 0 : unseen.hashCode) +
      (unread == null ? 0 : unread.hashCode) +
      (results == null ? 0 : results.hashCode);

  static List<ActivityPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ActivityPagination>[];
    }

    return json.fold(<ActivityPagination>[],
        (List<ActivityPagination> previousValue, element) {
      final ActivityPagination? object = ActivityPagination.fromJson(element);
      if (object is ActivityPagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ActivityPagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ActivityPagination>{};
    }

    return json.entries.fold(<String, ActivityPagination>{},
        (Map<String, ActivityPagination> previousValue, element) {
      final ActivityPagination? object =
          ActivityPagination.fromJson(element.value);
      if (object is ActivityPagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ActivityPagination-objects as value to a dart map
  static Map<String, List<ActivityPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ActivityPagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ActivityPagination>>(
          key, ActivityPagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ActivityPagination[duration=$duration, next=$next, unseen=$unseen, unread=$unread, results=$results]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'duration')) r'duration': duration,
      if (keys == null || keys.contains(r'next')) r'next': next,
      if (keys == null || keys.contains(r'unseen')) r'unseen': unseen,
      if (keys == null || keys.contains(r'unread')) r'unread': unread,
      if (keys == null || keys.contains(r'results')) r'results': results,
    };
  }
}
