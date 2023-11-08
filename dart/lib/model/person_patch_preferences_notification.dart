//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonPatchPreferencesNotification {
  /// Returns a new [PersonPatchPreferencesNotification] instance.
  PersonPatchPreferencesNotification({
    this.mail,
    this.push,
  });

  /// Returns a new [PersonPatchPreferencesNotification] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonPatchPreferencesNotification? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonPatchPreferencesNotification(
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

    return other is PersonPatchPreferencesNotification &&
        other.mail == mail &&
        other.push == push;
  }

  @override
  int get hashCode =>
      (mail == null ? 0 : mail.hashCode) + (push == null ? 0 : push.hashCode);

  static List<PersonPatchPreferencesNotification> listFromJson(
      Iterable<dynamic>? json) {
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
      'PersonPatchPreferencesNotification[mail=$mail, push=$push]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mail != null) || (keys?.contains(r'mail') ?? false))
        r'mail': mail,
      if ((keys == null && push != null) || (keys?.contains(r'push') ?? false))
        r'push': push,
    };
  }
}
