//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinksProcedure {
  /// Returns a new [SignerLinksProcedure] instance.
  SignerLinksProcedure({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [SignerLinksProcedure] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinksProcedure? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerLinksProcedure(
      href: json[r'href'],
      iriTemplate:
          SignerLinksProcedureIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the procedure associated to the given signer.
  String? href;

  SignerLinksProcedureIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksProcedure &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<SignerLinksProcedure> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignerLinksProcedure>[];
    }
    return json
        .map((value) {
          return SignerLinksProcedure.fromJson(value);
        })
        .whereType<SignerLinksProcedure>()
        .toList();
  }

  static Map<String, SignerLinksProcedure> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinksProcedure>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, SignerLinksProcedure?>(
            key, SignerLinksProcedure.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, SignerLinksProcedure>;
  }

  // maps a json object with a list of SignerLinksProcedure-objects as value to a dart map
  static Map<String, List<SignerLinksProcedure>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<SignerLinksProcedure>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: SignerLinksProcedure.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'SignerLinksProcedure[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
