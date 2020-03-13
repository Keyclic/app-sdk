part of keyclic_sdk_api.api;

class NotificationReportNotification {
  NotificationReportNotification({
    this.accepted,
    this.refused,
  });

  factory NotificationReportNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NotificationReportNotification(
      accepted: json['accepted'],
      refused: json['refused'],
    );
  }

  bool accepted;

  bool refused;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NotificationReportNotification &&
        runtimeType == other.runtimeType &&
        accepted == other.accepted &&
        refused == other.refused;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= accepted?.hashCode ?? 0;
    hashCode ^= refused?.hashCode ?? 0;

    return hashCode;
  }

  static List<NotificationReportNotification> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                NotificationReportNotification.fromJson(value))
            ?.toList() ??
        <NotificationReportNotification>[];
  }

  static Map<String, NotificationReportNotification> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, NotificationReportNotification>(
            (String key, dynamic value) {
          return MapEntry(key, NotificationReportNotification.fromJson(value));
        }) ??
        <String, NotificationReportNotification>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (accepted != null) 'accepted': accepted,
      if (refused != null) 'refused': refused,
    };
  }

  @override
  String toString() {
    return 'NotificationReportNotification[accepted=$accepted, refused=$refused, ]';
  }
}
