//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinks {
  /// Returns a new [PublicationLinks] instance.
  PublicationLinks({
    this.author,
    this.feed,
    this.organization,
    this.self,
  });

  /// Returns a new [PublicationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PublicationLinks(
      author: PublicationLinksAuthor.fromJson(json[r'author']),
      feed: PublicationLinksFeed.fromJson(json[r'feed']),
      organization:
          PublicationLinksOrganization.fromJson(json[r'organization']),
      self: PublicationLinksSelf.fromJson(json[r'self']),
    );
  }

  PublicationLinksAuthor? author;

  PublicationLinksFeed? feed;

  PublicationLinksOrganization? organization;

  PublicationLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinks &&
        other.author == author &&
        other.feed == feed &&
        other.organization == organization &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (author == null ? 0 : author.hashCode) +
      (feed == null ? 0 : feed.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<PublicationLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinks>[];
    }

    return json.fold(<PublicationLinks>[],
        (List<PublicationLinks> previousValue, element) {
      final PublicationLinks? object = PublicationLinks.fromJson(element);
      if (object is PublicationLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinks>{};
    }

    return json.entries.fold(<String, PublicationLinks>{},
        (Map<String, PublicationLinks> previousValue, element) {
      final PublicationLinks? object = PublicationLinks.fromJson(element.value);
      if (object is PublicationLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationLinks-objects as value to a dart map
  static Map<String, List<PublicationLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationLinks>>(
          key, PublicationLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationLinks[author=$author, feed=$feed, organization=$organization, self=$self]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^author\.').hasMatch(key)))
        r'author': author?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^author\.'))) {
            previousValue.add(element.split(RegExp(r'^author\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^feed\.').hasMatch(key)))
        r'feed': feed?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^feed\.'))) {
            previousValue.add(element.split(RegExp(r'^feed\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
