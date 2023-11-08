//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NoteLinksSelf {
  /// Returns a new [NoteLinksSelf] instance.
  NoteLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [NoteLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NoteLinksSelf(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : NoteLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given note.
  String? href;

  NoteLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<NoteLinksSelf> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <NoteLinksSelf>[];
    }

    return json.fold(<NoteLinksSelf>[],
        (List<NoteLinksSelf> previousValue, element) {
      final NoteLinksSelf? object = NoteLinksSelf.fromJson(element);
      if (object is NoteLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteLinksSelf>{};
    }

    return json.entries.fold(<String, NoteLinksSelf>{},
        (Map<String, NoteLinksSelf> previousValue, element) {
      final NoteLinksSelf? object = NoteLinksSelf.fromJson(element.value);
      if (object is NoteLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteLinksSelf-objects as value to a dart map
  static Map<String, List<NoteLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteLinksSelf>>(
          key, NoteLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
