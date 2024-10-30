//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FeedbackJsonhalReadLinksMember {
  /// Returns a new [FeedbackJsonhalReadLinksMember] instance.
  FeedbackJsonhalReadLinksMember({
    this.href,
  });

  /// Returns a new [FeedbackJsonhalReadLinksMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackJsonhalReadLinksMember? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackJsonhalReadLinksMember(
      href: json[r'href'],
    );
  }

  String? href;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackJsonhalReadLinksMember && other.href == href;
  }

  @override
  int get hashCode => (href == null ? 0 : href.hashCode);

  static List<FeedbackJsonhalReadLinksMember> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackJsonhalReadLinksMember>[];
    }

    return json.fold(<FeedbackJsonhalReadLinksMember>[],
        (List<FeedbackJsonhalReadLinksMember> previousValue, element) {
      final FeedbackJsonhalReadLinksMember? object =
          FeedbackJsonhalReadLinksMember.fromJson(element);
      if (object is FeedbackJsonhalReadLinksMember) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackJsonhalReadLinksMember> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackJsonhalReadLinksMember>{};
    }

    return json.entries.fold(<String, FeedbackJsonhalReadLinksMember>{},
        (Map<String, FeedbackJsonhalReadLinksMember> previousValue, element) {
      final FeedbackJsonhalReadLinksMember? object =
          FeedbackJsonhalReadLinksMember.fromJson(element.value);
      if (object is FeedbackJsonhalReadLinksMember) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackJsonhalReadLinksMember-objects as value to a dart map
  static Map<String, List<FeedbackJsonhalReadLinksMember>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackJsonhalReadLinksMember>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackJsonhalReadLinksMember>>(
          key, FeedbackJsonhalReadLinksMember.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackJsonhalReadLinksMember[href=$href]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
    };
  }
}
