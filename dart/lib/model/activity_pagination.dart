part of keyclic_sdk_api.api;

class ActivityPagination {
  ActivityPagination({
    this.duration,
    this.next,
    this.unseen,
    this.unread,
    this.results,
  });

  ActivityPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    duration = json['duration'];
    next = json['next'];
    unseen = json['unseen'];
    unread = json['unread'];
    results = Activity.listFromJson(json['results']);
  }

  String duration;

  String next;

  int unseen;

  int unread;

  List<Activity> results;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ActivityPagination &&
        runtimeType == other.runtimeType &&
        duration == other.duration &&
        next == other.next &&
        unseen == other.unseen &&
        unread == other.unread &&
        DeepCollectionEquality.unordered().equals(results, other.results);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (results is List && results.isNotEmpty) {
      hashCode ^= results
          .map((Activity element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= duration?.hashCode ?? 0;
    hashCode ^= next?.hashCode ?? 0;
    hashCode ^= unseen?.hashCode ?? 0;
    hashCode ^= unread?.hashCode ?? 0;

    return hashCode;
  }

  static List<ActivityPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <ActivityPagination>[]
        : json
            .map((dynamic value) => ActivityPagination.fromJson(value))
            .toList();
  }

  static Map<String, ActivityPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ActivityPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ActivityPagination.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (duration != null) 'duration': duration,
      if (next != null) 'next': next,
      if (unseen != null) 'unseen': unseen,
      if (unread != null) 'unread': unread,
      if (results != null) 'results': results,
    };
  }

  @override
  String toString() {
    return 'ActivityPagination[duration=$duration, next=$next, unseen=$unseen, unread=$unread, results=$results, ]';
  }
}
