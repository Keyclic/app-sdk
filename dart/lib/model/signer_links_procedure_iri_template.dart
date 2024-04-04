//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinksProcedureIriTemplate {
  /// Returns a new [SignerLinksProcedureIriTemplate] instance.
  SignerLinksProcedureIriTemplate({
    this.mapping,
  });

  /// Returns a new [SignerLinksProcedureIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinksProcedureIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SignerLinksProcedureIriTemplate(
      mapping:
          DocumentLinksProcedureIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  DocumentLinksProcedureIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksProcedureIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<SignerLinksProcedureIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <SignerLinksProcedureIriTemplate>[];
    }

    return json.fold(<SignerLinksProcedureIriTemplate>[],
        (List<SignerLinksProcedureIriTemplate> previousValue, element) {
      final SignerLinksProcedureIriTemplate? object =
          SignerLinksProcedureIriTemplate.fromJson(element);
      if (object is SignerLinksProcedureIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerLinksProcedureIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinksProcedureIriTemplate>{};
    }

    return json.entries.fold(<String, SignerLinksProcedureIriTemplate>{},
        (Map<String, SignerLinksProcedureIriTemplate> previousValue, element) {
      final SignerLinksProcedureIriTemplate? object =
          SignerLinksProcedureIriTemplate.fromJson(element.value);
      if (object is SignerLinksProcedureIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerLinksProcedureIriTemplate-objects as value to a dart map
  static Map<String, List<SignerLinksProcedureIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerLinksProcedureIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerLinksProcedureIriTemplate>>(
          key, SignerLinksProcedureIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'SignerLinksProcedureIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
