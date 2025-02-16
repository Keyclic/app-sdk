//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackEmbedded {
  /// Returns a new [FeedbackEmbedded] instance.
  FeedbackEmbedded({
    this.category,
    this.markers,
    this.member,
    this.reporter,
    this.stateTransitions,
    this.tracking,
  });

  /// Returns a new [FeedbackEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackEmbedded(
      category: Category.fromJson(json[r'category']),
      markers: Marker.listFromJson(json[r'markers']),
      member: Member.fromJson(json[r'member']),
      reporter: Person.fromJson(json[r'reporter']),
      stateTransitions: json[r'stateTransitions'] == null
          ? null
          : List<String>.from(json[r'stateTransitions']),
      tracking: json[r'tracking'],
    );
  }

  Category? category;

  List<Marker>? markers;

  Member? member;

  Person? reporter;

  List<String>? stateTransitions;

  String? tracking;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackEmbedded &&
        other.category == category &&
        DeepCollectionEquality.unordered().equals(markers, other.markers) &&
        other.member == member &&
        other.reporter == reporter &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions) &&
        other.tracking == tracking;
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      (markers == null ? 0 : markers.hashCode) +
      (member == null ? 0 : member.hashCode) +
      (reporter == null ? 0 : reporter.hashCode) +
      (stateTransitions == null ? 0 : stateTransitions.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<FeedbackEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackEmbedded>[];
    }

    return json.fold(<FeedbackEmbedded>[],
        (List<FeedbackEmbedded> previousValue, element) {
      final FeedbackEmbedded? object = FeedbackEmbedded.fromJson(element);
      if (object is FeedbackEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackEmbedded>{};
    }

    return json.entries.fold(<String, FeedbackEmbedded>{},
        (Map<String, FeedbackEmbedded> previousValue, element) {
      final FeedbackEmbedded? object = FeedbackEmbedded.fromJson(element.value);
      if (object is FeedbackEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackEmbedded-objects as value to a dart map
  static Map<String, List<FeedbackEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackEmbedded>>(
          key, FeedbackEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackEmbedded[category=$category, markers=$markers, member=$member, reporter=$reporter, stateTransitions=$stateTransitions, tracking=$tracking]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^category\.').hasMatch(key)))
        r'category': category?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^category\.'))) {
            previousValue.add(element.split(RegExp(r'^category\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'markers')) r'markers': markers,
      if (keys == null || keys.any((key) => RegExp(r'^member\.').hasMatch(key)))
        r'member': member?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^member\.'))) {
            previousValue.add(element.split(RegExp(r'^member\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^reporter\.').hasMatch(key)))
        r'reporter': reporter?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^reporter\.'))) {
            previousValue.add(element.split(RegExp(r'^reporter\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'stateTransitions'))
        r'stateTransitions': stateTransitions,
      if (keys == null || keys.contains(r'tracking')) r'tracking': tracking,
    };
  }
}
