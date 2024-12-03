//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonPatchPreferencesNotification {
  /// Returns a new [PersonPatchPreferencesNotification] instance.
  PersonPatchPreferencesNotification({
    this.inApp,
    this.mail,
    this.push,
  });

  /// Returns a new [PersonPatchPreferencesNotification] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonPatchPreferencesNotification? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PersonPatchPreferencesNotification(
      inApp: json[r'inApp'],
      mail: json[r'mail'],
      push: json[r'push'],
    );
  }

  bool? inApp;

  bool? mail;

  bool? push;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatchPreferencesNotification &&
        other.inApp == inApp &&
        other.mail == mail &&
        other.push == push;
  }

  @override
  int get hashCode =>
      (inApp == null ? 0 : inApp.hashCode) +
      (mail == null ? 0 : mail.hashCode) +
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
      'PersonPatchPreferencesNotification[inApp=$inApp, mail=$mail, push=$push]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'inApp')) r'inApp': inApp,
      if (keys == null || keys.contains(r'mail')) r'mail': mail,
      if (keys == null || keys.contains(r'push')) r'push': push,
    };
  }
}
