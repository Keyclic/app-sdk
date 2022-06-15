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
    return json
        .map((value) {
          return PublicationLinks.fromJson(value);
        })
        .whereType<PublicationLinks>()
        .toList();
  }

  static Map<String, PublicationLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinks>{};
    }

    final map = json.map((key, value) => MapEntry<String, PublicationLinks?>(
        key, PublicationLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PublicationLinks>;
  }

  // maps a json object with a list of PublicationLinks-objects as value to a dart map
  static Map<String, List<PublicationLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PublicationLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PublicationLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PublicationLinks[author=$author, feed=$feed, organization=$organization, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (author != null) r'author': author,
      if (feed != null) r'feed': feed,
      if (organization != null) r'organization': organization,
      if (self != null) r'self': self,
    };
  }
}
