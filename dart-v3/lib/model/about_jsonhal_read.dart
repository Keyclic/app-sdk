//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AboutJsonhalRead {
  /// Returns a new [AboutJsonhalRead] instance.
  AboutJsonhalRead({
    required this.name,
    this.text,
  });

  /// Returns a new [AboutJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AboutJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AboutJsonhalRead(
      name: json[r'name'],
      text: json[r'text'],
    );
  }

  String name;

  String? text;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AboutJsonhalRead &&
        other.name == name &&
        other.text == text;
  }

  @override
  int get hashCode => name.hashCode + (text == null ? 0 : text.hashCode);

  static List<AboutJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <AboutJsonhalRead>[];
    }

    return json.fold(<AboutJsonhalRead>[],
        (List<AboutJsonhalRead> previousValue, element) {
      final AboutJsonhalRead? object = AboutJsonhalRead.fromJson(element);
      if (object is AboutJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AboutJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AboutJsonhalRead>{};
    }

    return json.entries.fold(<String, AboutJsonhalRead>{},
        (Map<String, AboutJsonhalRead> previousValue, element) {
      final AboutJsonhalRead? object = AboutJsonhalRead.fromJson(element.value);
      if (object is AboutJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AboutJsonhalRead-objects as value to a dart map
  static Map<String, List<AboutJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AboutJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AboutJsonhalRead>>(
          key, AboutJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'AboutJsonhalRead[name=$name, text=$text]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'name': name,
      if (keys == null || keys.contains(r'text')) r'text': text,
    };
  }
}
