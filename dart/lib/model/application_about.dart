//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApplicationAbout {
  /// Returns a new [ApplicationAbout] instance.
  ApplicationAbout({
    this.name,
    this.text,
  });

  /// Returns a new [ApplicationAbout] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationAbout? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ApplicationAbout(
      name: json[r'name'],
      text: json[r'text'],
    );
  }

  String? name;

  String? text;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationAbout &&
        other.name == name &&
        other.text == text;
  }

  @override
  int get hashCode =>
      (name == null ? 0 : name.hashCode) + (text == null ? 0 : text.hashCode);

  static List<ApplicationAbout> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ApplicationAbout>[];
    }

    return json.fold(<ApplicationAbout>[],
        (List<ApplicationAbout> previousValue, element) {
      final ApplicationAbout? object = ApplicationAbout.fromJson(element);
      if (object is ApplicationAbout) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationAbout> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationAbout>{};
    }

    return json.entries.fold(<String, ApplicationAbout>{},
        (Map<String, ApplicationAbout> previousValue, element) {
      final ApplicationAbout? object = ApplicationAbout.fromJson(element.value);
      if (object is ApplicationAbout) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationAbout-objects as value to a dart map
  static Map<String, List<ApplicationAbout>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationAbout>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationAbout>>(
          key, ApplicationAbout.listFromJson(value));
    });
  }

  @override
  String toString() => 'ApplicationAbout[name=$name, text=$text]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && text != null) || (keys?.contains(r'text') ?? false))
        r'text': text,
    };
  }
}
