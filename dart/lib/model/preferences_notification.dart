//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesNotification {
  /// Returns a new [PreferencesNotification] instance.
  PreferencesNotification({
    this.mail,
    this.push,
  });

  /// Returns a new [PreferencesNotification] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PreferencesNotification(
      mail: json[r'mail'],
      push: json[r'push'],
    );
  }

  bool? mail;

  bool? push;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesNotification &&
        other.mail == mail &&
        other.push == push;
  }

  @override
  int get hashCode =>
      (mail == null ? 0 : mail.hashCode) + (push == null ? 0 : push.hashCode);

  static List<PreferencesNotification> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PreferencesNotification>[];
    }
    return json
        .map((value) {
          return PreferencesNotification.fromJson(value);
        })
        .whereType<PreferencesNotification>()
        .toList();
  }

  static Map<String, PreferencesNotification> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesNotification>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PreferencesNotification?>(
            key, PreferencesNotification.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PreferencesNotification>;
  }

  // maps a json object with a list of PreferencesNotification-objects as value to a dart map
  static Map<String, List<PreferencesNotification>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PreferencesNotification>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PreferencesNotification.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PreferencesNotification[mail=$mail, push=$push]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mail != null) r'mail': mail,
      if (push != null) r'push': push,
    };
  }
}
