//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationData {
  /// Returns a new [PublicationData] instance.
  PublicationData({
    required this.message,
    required this.feed,
    required this.title,
    required this.organization,
  });

  /// Returns a new [PublicationData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationData? fromJson(Map<String, dynamic>? json) {
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
      message.hashCode + feed.hashCode + title.hashCode + organization.hashCode;

  static List<PublicationData> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PublicationData>[];
    }

    return json.fold(<PublicationData>[],
        (List<PublicationData> previousValue, element) {
      final PublicationData? object = PublicationData.fromJson(element);
      if (object is PublicationData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationData>{};
    }

    return json.entries.fold(<String, PublicationData>{},
        (Map<String, PublicationData> previousValue, element) {
      final PublicationData? object = PublicationData.fromJson(element.value);
      if (object is PublicationData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationData-objects as value to a dart map
  static Map<String, List<PublicationData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationData>>(
          key, PublicationData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationData[message=$message, feed=$feed, title=$title, organization=$organization]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'message': message,
      r'feed': feed,
      r'title': title,
      r'organization': organization,
    };
  }
}
