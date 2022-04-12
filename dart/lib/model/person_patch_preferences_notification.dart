//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PersonPatchPreferencesNotification {
  /// Returns a new [PersonPatchPreferencesNotification] instance.
  PersonPatchPreferencesNotification({
    this.mail,
    this.push,
  });

  /// Returns a new [PersonPatchPreferencesNotification] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PersonPatchPreferencesNotification.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonPatchPreferencesNotification(
      mail: json[r'mail'],
      push: json[r'push'],
    );
  }

  bool mail;

  bool push;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatchPreferencesNotification &&
        other.mail == mail &&
        other.push == push;
  }

  @override
  int get hashCode =>
      (mail == null ? 0 : mail.hashCode) + (push == null ? 0 : push.hashCode);

  static List<PersonPatchPreferencesNotification> listFromJson(
      List<dynamic> json) {
    return <PersonPatchPreferencesNotification>[
      if (json is List)
        for (dynamic value in json)
          PersonPatchPreferencesNotification.fromJson(value),
    ];
  }

  static Map<String, PersonPatchPreferencesNotification> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PersonPatchPreferencesNotification>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonPatchPreferencesNotification.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PersonPatchPreferencesNotification-objects as value to a dart map
  static Map<String, List<PersonPatchPreferencesNotification>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PersonPatchPreferencesNotification>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              PersonPatchPreferencesNotification.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PersonPatchPreferencesNotification[mail=$mail, push=$push]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mail != null) r'mail': mail,
      if (push != null) r'push': push,
    };
  }
}
