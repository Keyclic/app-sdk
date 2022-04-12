//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PersonPatchPreferences {
  /// Returns a new [PersonPatchPreferences] instance.
  PersonPatchPreferences({
    this.notification,
  });

  /// Returns a new [PersonPatchPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PersonPatchPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonPatchPreferences(
      notification:
          PersonPatchPreferencesNotification.fromJson(json[r'notification']),
    );
  }

  PersonPatchPreferencesNotification notification;

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

  static List<PersonPatchPreferences> listFromJson(List<dynamic> json) {
    return <PersonPatchPreferences>[
      if (json is List)
        for (dynamic value in json) PersonPatchPreferences.fromJson(value),
    ];
  }

  static Map<String, PersonPatchPreferences> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PersonPatchPreferences>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonPatchPreferences.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PersonPatchPreferences-objects as value to a dart map
  static Map<String, List<PersonPatchPreferences>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PersonPatchPreferences>>{
      if (json is Map)
        for (final entry in json.entries)
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
