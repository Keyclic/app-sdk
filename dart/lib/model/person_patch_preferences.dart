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
  static PersonPatchPreferences? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return json.fold(<PersonPatchPreferences>[],
        (List<PersonPatchPreferences> previousValue, element) {
      final PersonPatchPreferences? object =
          PersonPatchPreferences.fromJson(element);
      if (object is PersonPatchPreferences) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonPatchPreferences> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonPatchPreferences>{};
    }

    return json.entries.fold(<String, PersonPatchPreferences>{},
        (Map<String, PersonPatchPreferences> previousValue, element) {
      final PersonPatchPreferences? object =
          PersonPatchPreferences.fromJson(element.value);
      if (object is PersonPatchPreferences) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonPatchPreferences-objects as value to a dart map
  static Map<String, List<PersonPatchPreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonPatchPreferences>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonPatchPreferences>>(
          key, PersonPatchPreferences.listFromJson(value));
    });
  }

  @override
  String toString() => 'PersonPatchPreferences[notification=$notification]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^notification\.').hasMatch(key)))
        r'notification': notification?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^notification\.'))) {
            previousValue.add(element.split(RegExp(r'^notification\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
