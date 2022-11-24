//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PersonPreferences {
  /// Returns a new [PersonPreferences] instance.
  PersonPreferences({
    this.notification,
  });

  /// Returns a new [PersonPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PersonPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonPreferences(
      notification: PreferencesNotification.fromJson(json[r'notification']),
    );
  }

  PreferencesNotification notification;

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

  static List<PersonPreferences> listFromJson(List<dynamic> json) {
    return <PersonPreferences>[
      if (json is List)
        for (dynamic value in json) PersonPreferences.fromJson(value),
    ];
  }

  static Map<String, PersonPreferences> mapFromJson(Map<String, dynamic> json) {
    return <String, PersonPreferences>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonPreferences.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PersonPreferences-objects as value to a dart map
  static Map<String, List<PersonPreferences>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PersonPreferences>>{
      if (json is Map)
        for (final entry in json.entries)
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
