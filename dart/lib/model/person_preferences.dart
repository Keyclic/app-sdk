//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonPreferences {
  /// Returns a new [PersonPreferences] instance.
  PersonPreferences({
    this.notification,
  });

  /// Returns a new [PersonPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonPreferences? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonPreferences(
      notification: PreferencesNotification.fromJson(json[r'notification']),
    );
  }

  PreferencesNotification? notification;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPreferences && other.notification == notification;
  }

  @override
  int get hashCode => (notification == null ? 0 : notification.hashCode);

  static List<PersonPreferences> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PersonPreferences>[];
    }
    return json
        .map((value) {
          return PersonPreferences.fromJson(value);
        })
        .whereType<PersonPreferences>()
        .toList();
  }

  static Map<String, PersonPreferences> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonPreferences>{};
    }

    final map = json.map((key, value) => MapEntry<String, PersonPreferences?>(
        key, PersonPreferences.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PersonPreferences>;
  }

  // maps a json object with a list of PersonPreferences-objects as value to a dart map
  static Map<String, List<PersonPreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PersonPreferences>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PersonPreferences.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PersonPreferences[notification=$notification]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (notification != null) r'notification': notification,
    };
  }
}
