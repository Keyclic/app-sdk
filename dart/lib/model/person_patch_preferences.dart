//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonPatchPreferences {
  /// Returns a new [PersonPatchPreferences] instance.
  PersonPatchPreferences({
    this.notification,
  });

  /// Returns a new [PersonPatchPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonPatchPreferences? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonPatchPreferences(
      notification:
          PersonPatchPreferencesNotification.fromJson(json[r'notification']),
    );
  }

  PersonPatchPreferencesNotification? notification;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatchPreferences &&
        other.notification == notification;
  }

  @override
  int get hashCode => (notification == null ? 0 : notification.hashCode);

  static List<PersonPatchPreferences> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PersonPatchPreferences>[];
    }
    return json
        .map((value) {
          return PersonPatchPreferences.fromJson(value);
        })
        .whereType<PersonPatchPreferences>()
        .toList();
  }

  static Map<String, PersonPatchPreferences> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonPatchPreferences>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PersonPatchPreferences?>(
            key, PersonPatchPreferences.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PersonPatchPreferences>;
  }

  // maps a json object with a list of PersonPatchPreferences-objects as value to a dart map
  static Map<String, List<PersonPatchPreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PersonPatchPreferences>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PersonPatchPreferences.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PersonPatchPreferences[notification=$notification]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (notification != null) r'notification': notification,
    };
  }
}
