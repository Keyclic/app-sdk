part of keyclic_sdk_api.api;

class NoteLinksSelfIriTemplateMapping {
  NoteLinksSelfIriTemplateMapping({
    this.note,
  });

  factory NoteLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksSelfIriTemplateMapping(
      note: json['note'],
    );
  }

  String note;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        note == other.note;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= note?.hashCode ?? 0;

    return hashCode;
  }

  static List<NoteLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                NoteLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <NoteLinksSelfIriTemplateMapping>[];
  }

  static Map<String, NoteLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, NoteLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(key, NoteLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, NoteLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (note != null) 'note': note,
    };
  }

  @override
  String toString() {
    return 'NoteLinksSelfIriTemplateMapping[note=$note, ]';
  }
}
