//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksMember {
  /// Returns a new [FeedbackLinksMember] instance.
  FeedbackLinksMember({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [FeedbackLinksMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksMember? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackLinksMember(
      href: json[r'href'],
      iriTemplate:
          FeedbackLinksMemberIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the member associated to the given feedback.
  String? href;

  FeedbackLinksMemberIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksMember &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<FeedbackLinksMember> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackLinksMember>[];
    }

    return json.fold(<FeedbackLinksMember>[],
        (List<FeedbackLinksMember> previousValue, element) {
      final FeedbackLinksMember? object = FeedbackLinksMember.fromJson(element);
      if (object is FeedbackLinksMember) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksMember> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksMember>{};
    }

    return json.entries.fold(<String, FeedbackLinksMember>{},
        (Map<String, FeedbackLinksMember> previousValue, element) {
      final FeedbackLinksMember? object =
          FeedbackLinksMember.fromJson(element.value);
      if (object is FeedbackLinksMember) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksMember-objects as value to a dart map
  static Map<String, List<FeedbackLinksMember>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksMember>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksMember>>(
          key, FeedbackLinksMember.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinksMember[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
