//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksFeed {
  /// Returns a new [PublicationLinksFeed] instance.
  PublicationLinksFeed({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PublicationLinksFeed] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksFeed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksFeed(
      href: json[r'href'],
      iriTemplate:
          PublicationLinksFeedIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the feed associated to the given publication.
  String? href;

  PublicationLinksFeedIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksFeed &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PublicationLinksFeed> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksFeed>[];
    }

    return json.fold(<PublicationLinksFeed>[],
        (List<PublicationLinksFeed> previousValue, element) {
      final PublicationLinksFeed? object =
          PublicationLinksFeed.fromJson(element);
      if (object is PublicationLinksFeed) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationLinksFeed> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksFeed>{};
    }

    return json.entries.fold(<String, PublicationLinksFeed>{},
        (Map<String, PublicationLinksFeed> previousValue, element) {
      final PublicationLinksFeed? object =
          PublicationLinksFeed.fromJson(element.value);
      if (object is PublicationLinksFeed) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationLinksFeed-objects as value to a dart map
  static Map<String, List<PublicationLinksFeed>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationLinksFeed>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationLinksFeed>>(
          key, PublicationLinksFeed.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationLinksFeed[href=$href, iriTemplate=$iriTemplate]';

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
