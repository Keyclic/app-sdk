//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ActivityAggregatedPagination {
  /// Returns a new [ActivityAggregatedPagination] instance.
  ActivityAggregatedPagination({
    this.duration,
    this.next,
    this.unseen,
    this.unread,
    this.results,
  });

  /// Returns a new [ActivityAggregatedPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ActivityAggregatedPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ActivityAggregatedPagination(
      duration: json[r'duration'],
      next: json[r'next'],
      unseen: json[r'unseen'],
      unread: json[r'unread'],
      results: json[r'results'] is! Iterable
          ? null
          : ActivityGroup.listFromJson(json[r'results']),
    );
  }

  String? duration;

  String? next;

  int? unseen;

  int? unread;

  List<ActivityGroup>? results;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ActivityAggregatedPagination &&
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

  static List<ActivityAggregatedPagination> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <ActivityAggregatedPagination>[];
    }

    return json.fold(<ActivityAggregatedPagination>[],
        (List<ActivityAggregatedPagination> previousValue, element) {
      final ActivityAggregatedPagination? object =
          ActivityAggregatedPagination.fromJson(element);
      if (object is ActivityAggregatedPagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ActivityAggregatedPagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ActivityAggregatedPagination>{};
    }

    return json.entries.fold(<String, ActivityAggregatedPagination>{},
        (Map<String, ActivityAggregatedPagination> previousValue, element) {
      final ActivityAggregatedPagination? object =
          ActivityAggregatedPagination.fromJson(element.value);
      if (object is ActivityAggregatedPagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ActivityAggregatedPagination-objects as value to a dart map
  static Map<String, List<ActivityAggregatedPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ActivityAggregatedPagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ActivityAggregatedPagination>>(
          key, ActivityAggregatedPagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ActivityAggregatedPagination[duration=$duration, next=$next, unseen=$unseen, unread=$unread, results=$results]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && duration != null) ||
          (keys?.contains(r'duration') ?? false))
        r'duration': duration,
      if ((keys == null && next != null) || (keys?.contains(r'next') ?? false))
        r'next': next,
      if ((keys == null && unseen != null) ||
          (keys?.contains(r'unseen') ?? false))
        r'unseen': unseen,
      if ((keys == null && unread != null) ||
          (keys?.contains(r'unread') ?? false))
        r'unread': unread,
      if ((keys == null && results != null) ||
          (keys?.contains(r'results') ?? false))
        r'results': results,
    };
  }
}
