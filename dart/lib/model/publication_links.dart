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
  static PublicationLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && author != null) ||
          (keys?.contains(r'author') ?? false))
        r'author': author?.toJson(),
      if ((keys == null && feed != null) || (keys?.contains(r'feed') ?? false))
        r'feed': feed?.toJson(),
      if ((keys == null && organization != null) ||
          (keys?.contains(r'organization') ?? false))
        r'organization': organization?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
