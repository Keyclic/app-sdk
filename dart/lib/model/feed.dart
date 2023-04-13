part of keyclic_sdk_api.api;

class Feed {
  Feed({
    this.apiKey,
    this.appId,
    this.userId,
    this.userToken,
  });

  factory Feed.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Feed(
      apiKey: json['apiKey'],
      appId: json['appId'],
      userId: json['userId'],
      userToken: json['userToken'],
    );
  }

  String apiKey;

  String appId;

  String userId;

  String userToken;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Feed &&
        runtimeType == other.runtimeType &&
        apiKey == other.apiKey &&
        appId == other.appId &&
        userId == other.userId &&
        userToken == other.userToken;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= apiKey?.hashCode ?? 0;
    hashCode ^= appId?.hashCode ?? 0;
    hashCode ^= userId?.hashCode ?? 0;
    hashCode ^= userToken?.hashCode ?? 0;

    return hashCode;
  }

  static List<Feed> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Feed.fromJson(value))?.toList() ??
        <Feed>[];
  }

  static Map<String, Feed> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Feed>((String key, dynamic value) {
          return MapEntry(key, Feed.fromJson(value));
        }) ??
        <String, Feed>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (apiKey != null) 'apiKey': apiKey,
      if (appId != null) 'appId': appId,
      if (userId != null) 'userId': userId,
      if (userToken != null) 'userToken': userToken,
    };
  }

  @override
  String toString() {
    return 'Feed[apiKey=$apiKey, appId=$appId, userId=$userId, userToken=$userToken, ]';
  }
}
