part of keyclic_sdk_api.api;

class SignerCollection {
  SignerCollection({
    this.items,
  });

  factory SignerCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerCollection(
      items: Signer.listFromJson(json['items']),
    );
  }

  List<Signer> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Signer element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<SignerCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignerCollection.fromJson(value))
            ?.toList() ??
        <SignerCollection>[];
  }

  static Map<String, SignerCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, SignerCollection>((String key, dynamic value) {
          return MapEntry(key, SignerCollection.fromJson(value));
        }) ??
        <String, SignerCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'SignerCollection[items=$items, ]';
  }
}
