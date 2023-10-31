//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinksMemberIriTemplate {
  /// Returns a new [SignerLinksMemberIriTemplate] instance.
  SignerLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [SignerLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinksMemberIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerLinksMemberIriTemplate(
      mapping:
          AssignmentLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksMemberIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksMemberIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<SignerLinksMemberIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignerLinksMemberIriTemplate>[];
    }

    return json.fold(<SignerLinksMemberIriTemplate>[],
        (List<SignerLinksMemberIriTemplate> previousValue, element) {
      final SignerLinksMemberIriTemplate? object =
          SignerLinksMemberIriTemplate.fromJson(element);
      if (object is SignerLinksMemberIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinksMemberIriTemplate>{};
    }

    return json.entries.fold(<String, SignerLinksMemberIriTemplate>{},
        (Map<String, SignerLinksMemberIriTemplate> previousValue, element) {
      final SignerLinksMemberIriTemplate? object =
          SignerLinksMemberIriTemplate.fromJson(element.value);
      if (object is SignerLinksMemberIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<SignerLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerLinksMemberIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerLinksMemberIriTemplate>>(
          key, SignerLinksMemberIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'SignerLinksMemberIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
