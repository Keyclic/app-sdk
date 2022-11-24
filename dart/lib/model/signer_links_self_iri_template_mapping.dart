//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinksSelfIriTemplateMapping {
  /// Returns a new [SignerLinksSelfIriTemplateMapping] instance.
  SignerLinksSelfIriTemplateMapping({
    this.signer,
  });

  /// Returns a new [SignerLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerLinksSelfIriTemplateMapping(
      signer: json[r'signer'],
    );
  }

  String? signer;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksSelfIriTemplateMapping && other.signer == signer;
  }

  @override
  int get hashCode => (signer == null ? 0 : signer.hashCode);

  static List<SignerLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <SignerLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<SignerLinksSelfIriTemplateMapping>[],
        (List<SignerLinksSelfIriTemplateMapping> previousValue, element) {
      final SignerLinksSelfIriTemplateMapping? object =
          SignerLinksSelfIriTemplateMapping.fromJson(element);
      if (object is SignerLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, SignerLinksSelfIriTemplateMapping>{},
        (Map<String, SignerLinksSelfIriTemplateMapping> previousValue,
            element) {
      final SignerLinksSelfIriTemplateMapping? object =
          SignerLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is SignerLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<SignerLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerLinksSelfIriTemplateMapping>>(
          key, SignerLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'SignerLinksSelfIriTemplateMapping[signer=$signer]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (signer != null) r'signer': signer,
    };
  }
}
