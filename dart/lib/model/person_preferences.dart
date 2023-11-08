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
      notification: json[r'notification'] is! Map
          ? null
          : PreferencesNotification.fromJson(json[r'notification']),
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

  static List<PersonPreferences> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PersonPreferences>[];
    }

    return json.fold(<PersonPreferences>[],
        (List<PersonPreferences> previousValue, element) {
      final PersonPreferences? object = PersonPreferences.fromJson(element);
      if (object is PersonPreferences) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonPreferences> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonPreferences>{};
    }

    return json.entries.fold(<String, PersonPreferences>{},
        (Map<String, PersonPreferences> previousValue, element) {
      final PersonPreferences? object =
          PersonPreferences.fromJson(element.value);
      if (object is PersonPreferences) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonPreferences-objects as value to a dart map
  static Map<String, List<PersonPreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonPreferences>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonPreferences>>(
          key, PersonPreferences.listFromJson(value));
    });
  }

  @override
  String toString() => 'PersonPreferences[notification=$notification]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && notification != null) ||
          (keys?.contains(r'notification') ?? false))
        r'notification': notification?.toJson(),
    };
  }
}
