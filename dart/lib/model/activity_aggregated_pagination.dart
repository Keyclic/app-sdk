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
    this.results = const [],
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
      results: ActivityGroup.listFromJson(json[r'results']),
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

  static List<ActivityAggregatedPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ActivityAggregatedPagination>[];
    }
    return json
        .map((value) {
          return ActivityAggregatedPagination.fromJson(value);
        })
        .whereType<ActivityAggregatedPagination>()
        .toList();
  }

  static Map<String, ActivityAggregatedPagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ActivityAggregatedPagination>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ActivityAggregatedPagination?>(
            key, ActivityAggregatedPagination.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ActivityAggregatedPagination>;
  }

  // maps a json object with a list of ActivityAggregatedPagination-objects as value to a dart map
  static Map<String, List<ActivityAggregatedPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ActivityAggregatedPagination>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ActivityAggregatedPagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ActivityAggregatedPagination[duration=$duration, next=$next, unseen=$unseen, unread=$unread, results=$results]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (duration != null) r'duration': duration,
      if (next != null) r'next': next,
      if (unseen != null) r'unseen': unseen,
      if (unread != null) r'unread': unread,
      if (results != null) r'results': results,
    };
  }
}
