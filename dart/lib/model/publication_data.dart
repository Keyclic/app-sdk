//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PublicationData {
  /// Returns a new [PublicationData] instance.
  PublicationData({
    @required this.message,
    @required this.feed,
    @required this.title,
    @required this.organization,
  });

  /// Returns a new [PublicationData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PublicationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationData(
      message: json[r'message'],
      feed: json[r'feed'],
      title: json[r'title'],
      organization: json[r'organization'],
    );
  }

  String message;

  String feed;

  String title;

  String organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationData &&
        other.message == message &&
        other.feed == feed &&
        other.title == title &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      (message == null ? 0 : message.hashCode) +
      (feed == null ? 0 : feed.hashCode) +
      (title == null ? 0 : title.hashCode) +
      (organization == null ? 0 : organization.hashCode);

  static List<PublicationData> listFromJson(List<dynamic> json) {
    return <PublicationData>[
      if (json is List)
        for (dynamic value in json) PublicationData.fromJson(value),
    ];
  }

  static Map<String, PublicationData> mapFromJson(Map<String, dynamic> json) {
    return <String, PublicationData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PublicationData-objects as value to a dart map
  static Map<String, List<PublicationData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PublicationData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PublicationData[message=$message, feed=$feed, title=$title, organization=$organization]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'message': message,
      r'feed': feed,
      r'title': title,
      r'organization': organization,
    };
  }
}
