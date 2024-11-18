//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonPatchPreferencesNotification {
  /// Returns a new [PersonPatchPreferencesNotification] instance.
  PersonPatchPreferencesNotification({
    this.mail,
    this.inApp,
    this.push,
  });

  /// Returns a new [PersonPatchPreferencesNotification] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonPatchPreferencesNotification? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PersonPatchPreferencesNotification(
      mail: json[r'mail'],
      inApp: json[r'inApp'],
      push: json[r'push'],
    );
  }

  bool? mail;

  bool? inApp;

  bool? push;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatchPreferencesNotification &&
        other.mail == mail &&
        other.inApp == inApp &&
        other.push == push;
  }

  @override
  int get hashCode =>
      (mail == null ? 0 : mail.hashCode) +
      (inApp == null ? 0 : inApp.hashCode) +
      (push == null ? 0 : push.hashCode);

  static List<PersonPatchPreferencesNotification> listFromJson(Iterable? json) {
    if (json == null) {
      return <PersonPatchPreferencesNotification>[];
    }

    return json.fold(<PersonPatchPreferencesNotification>[],
        (List<PersonPatchPreferencesNotification> previousValue, element) {
      final PersonPatchPreferencesNotification? object =
          PersonPatchPreferencesNotification.fromJson(element);
      if (object is PersonPatchPreferencesNotification) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonPatchPreferencesNotification> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonPatchPreferencesNotification>{};
    }

    return json.entries.fold(<String, PersonPatchPreferencesNotification>{},
        (Map<String, PersonPatchPreferencesNotification> previousValue,
            element) {
      final PersonPatchPreferencesNotification? object =
          PersonPatchPreferencesNotification.fromJson(element.value);
      if (object is PersonPatchPreferencesNotification) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonPatchPreferencesNotification-objects as value to a dart map
  static Map<String, List<PersonPatchPreferencesNotification>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonPatchPreferencesNotification>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonPatchPreferencesNotification>>(
          key, PersonPatchPreferencesNotification.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PersonPatchPreferencesNotification[mail=$mail, inApp=$inApp, push=$push]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'mail')) r'mail': mail,
      if (keys == null || keys.contains(r'inApp')) r'inApp': inApp,
      if (keys == null || keys.contains(r'push')) r'push': push,
    };
  }
}
