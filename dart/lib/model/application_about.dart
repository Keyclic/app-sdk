//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApplicationAbout {
  /// Returns a new [ApplicationAbout] instance.
  ApplicationAbout({
    this.name,
    this.text,
  });

  /// Returns a new [ApplicationAbout] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ApplicationAbout.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationAbout(
      name: json[r'name'],
      text: json[r'text'],
    );
  }

  String name;

  String text;

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

  static List<ApplicationAbout> listFromJson(List<dynamic> json) {
    return <ApplicationAbout>[
      if (json is List)
        for (dynamic value in json) ApplicationAbout.fromJson(value),
    ];
  }

  static Map<String, ApplicationAbout> mapFromJson(Map<String, dynamic> json) {
    return <String, ApplicationAbout>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationAbout.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ApplicationAbout-objects as value to a dart map
  static Map<String, List<ApplicationAbout>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ApplicationAbout>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationAbout.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ApplicationAbout[name=$name, text=$text]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (name != null) r'name': name,
      if (text != null) r'text': text,
    };
  }
}
