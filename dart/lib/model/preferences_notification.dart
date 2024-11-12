//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesNotification {
  /// Returns a new [PreferencesNotification] instance.
  PreferencesNotification({
    this.inApp,
    this.mail,
    this.push,
  });

  /// Returns a new [PreferencesNotification] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesNotification? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesNotification(
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

    return other is PreferencesNotification &&
        other.inApp == inApp &&
        other.mail == mail &&
        other.push == push;
  }

  @override
  int get hashCode =>
      (inApp == null ? 0 : inApp.hashCode) +
      (mail == null ? 0 : mail.hashCode) +
      (push == null ? 0 : push.hashCode);

  static List<PreferencesNotification> listFromJson(Iterable? json) {
    if (json == null) {
      return <PreferencesNotification>[];
    }

    return json.fold(<PreferencesNotification>[],
        (List<PreferencesNotification> previousValue, element) {
      final PreferencesNotification? object =
          PreferencesNotification.fromJson(element);
      if (object is PreferencesNotification) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesNotification> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesNotification>{};
    }

    return json.entries.fold(<String, PreferencesNotification>{},
        (Map<String, PreferencesNotification> previousValue, element) {
      final PreferencesNotification? object =
          PreferencesNotification.fromJson(element.value);
      if (object is PreferencesNotification) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesNotification-objects as value to a dart map
  static Map<String, List<PreferencesNotification>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesNotification>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesNotification>>(
          key, PreferencesNotification.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PreferencesNotification[inApp=$inApp, mail=$mail, push=$push]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'inApp')) r'inApp': inApp,
      if (keys == null || keys.contains(r'mail')) r'mail': mail,
      if (keys == null || keys.contains(r'push')) r'push': push,
    };
  }
}
