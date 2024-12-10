//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FeedbackJsonhalReadLinks {
  /// Returns a new [FeedbackJsonhalReadLinks] instance.
  FeedbackJsonhalReadLinks({
    required this.self,
    this.reporter,
  });

  /// Returns a new [FeedbackJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self'])!,
      reporter:
          GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'reporter']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf self;

  GetPlaceCollection200ResponseLinksFirst? reporter;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackJsonhalReadLinks &&
        other.self == self &&
        other.reporter == reporter;
  }

  @override
  int get hashCode =>
      self.hashCode + (reporter == null ? 0 : reporter.hashCode);

  static List<FeedbackJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackJsonhalReadLinks>[];
    }

    return json.fold(<FeedbackJsonhalReadLinks>[],
        (List<FeedbackJsonhalReadLinks> previousValue, element) {
      final FeedbackJsonhalReadLinks? object =
          FeedbackJsonhalReadLinks.fromJson(element);
      if (object is FeedbackJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, FeedbackJsonhalReadLinks>{},
        (Map<String, FeedbackJsonhalReadLinks> previousValue, element) {
      final FeedbackJsonhalReadLinks? object =
          FeedbackJsonhalReadLinks.fromJson(element.value);
      if (object is FeedbackJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<FeedbackJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackJsonhalReadLinks>>(
          key, FeedbackJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackJsonhalReadLinks[self=$self, reporter=$reporter]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'self': self.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^self\.'))) {
          previousValue.add(element.split(RegExp(r'^self\.')).last);
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
    };
  }
}
