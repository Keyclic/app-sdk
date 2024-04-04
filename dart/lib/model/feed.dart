//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Feed {
  /// Returns a new [Feed] instance.
  Feed({
    this.apiKey,
    this.appId,
    this.userId,
    this.userToken,
  });

  /// Returns a new [Feed] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Feed? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Feed(
      apiKey: json[r'apiKey'],
      appId: json[r'appId'],
      userId: json[r'userId'],
      userToken: json[r'userToken'],
    );
  }

  String? apiKey;

  String? appId;

  String? userId;

  String? userToken;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Feed &&
        other.apiKey == apiKey &&
        other.appId == appId &&
        other.userId == userId &&
        other.userToken == userToken;
  }

  @override
  int get hashCode =>
      (apiKey == null ? 0 : apiKey.hashCode) +
      (appId == null ? 0 : appId.hashCode) +
      (userId == null ? 0 : userId.hashCode) +
      (userToken == null ? 0 : userToken.hashCode);

  static List<Feed> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Feed>[];
    }

    return json.fold(<Feed>[], (List<Feed> previousValue, element) {
      final Feed? object = Feed.fromJson(element);
      if (object is Feed) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Feed> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Feed>{};
    }

    return json.entries.fold(<String, Feed>{},
        (Map<String, Feed> previousValue, element) {
      final Feed? object = Feed.fromJson(element.value);
      if (object is Feed) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Feed-objects as value to a dart map
  static Map<String, List<Feed>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Feed>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Feed>>(key, Feed.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Feed[apiKey=$apiKey, appId=$appId, userId=$userId, userToken=$userToken]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'apiKey')) r'apiKey': apiKey,
      if (keys == null || keys.contains(r'appId')) r'appId': appId,
      if (keys == null || keys.contains(r'userId')) r'userId': userId,
      if (keys == null || keys.contains(r'userToken')) r'userToken': userToken,
    };
  }
}
