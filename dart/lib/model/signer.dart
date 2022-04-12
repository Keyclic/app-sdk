//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Signer {
  /// Returns a new [Signer] instance.
  Signer({
    this.embedded,
    this.links,
    this.id,
    this.signature,
    this.type,
  });

  /// Returns a new [Signer] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Signer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Signer(
      embedded: InvitationEmbedded.fromJson(json[r'_embedded']),
      links: SignerLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      signature: SignerSignature.fromJson(json[r'signature']),
      type: json[r'type'],
    );
  }

  InvitationEmbedded? embedded;

  SignerLinks? links;

  final String? id;

  SignerSignature? signature;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Signer &&
        other.embedded == embedded &&
        other.links == links &&
        other.id == id &&
        other.signature == signature &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (signature == null ? 0 : signature.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<Signer> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Signer>[];
    }
    return json
        .map((value) {
          return Signer.fromJson(value);
        })
        .whereType<Signer>()
        .toList();
  }

  static Map<String, Signer> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Signer>{};
    }

    final map = json.map(
        (key, value) => MapEntry<String, Signer?>(key, Signer.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Signer>;
  }

  // maps a json object with a list of Signer-objects as value to a dart map
  static Map<String, List<Signer>> mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<Signer>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Signer.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Signer[embedded=$embedded, links=$links, id=$id, signature=$signature, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (id != null) r'id': id,
      if (signature != null) r'signature': signature,
      if (type != null) r'type': type,
    };
  }
}
