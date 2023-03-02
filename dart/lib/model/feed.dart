//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
  factory Feed.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Feed(
      apiKey: json[r'apiKey'],
      appId: json[r'appId'],
      userId: json[r'userId'],
      userToken: json[r'userToken'],
    );
  }

  String apiKey;

  String appId;

  String userId;

  String userToken;

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

  static List<Feed> listFromJson(List<dynamic> json) {
    return <Feed>[
      if (json is List)
        for (dynamic value in json) Feed.fromJson(value),
    ];
  }

  static Map<String, Feed> mapFromJson(Map<String, dynamic> json) {
    return <String, Feed>{
      if (json is Map)
        for (final entry in json.entries) entry.key: Feed.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Feed-objects as value to a dart map
  static Map<String, List<Feed>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Feed>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Feed.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Feed[apiKey=$apiKey, appId=$appId, userId=$userId, userToken=$userToken]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (apiKey != null) r'apiKey': apiKey,
      if (appId != null) r'appId': appId,
      if (userId != null) r'userId': userId,
      if (userToken != null) r'userToken': userToken,
    };
  }
}
