//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Contract {
  /// Returns a new [Contract] instance.
  Contract({
    this.description,
    this.id,
    this.name,
    this.number,
  });

  /// Returns a new [Contract] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Contract? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Contract(
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      number: json[r'number'],
    );
  }

  String? description;

  String? id;

  String? name;

  String? number;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Contract &&
        other.description == description &&
        other.id == id &&
        other.name == name &&
        other.number == number;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (number == null ? 0 : number.hashCode);

  static List<Contract> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Contract>[];
    }

    return json.fold(<Contract>[], (List<Contract> previousValue, element) {
      final Contract? object = Contract.fromJson(element);
      if (object is Contract) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Contract> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Contract>{};
    }

    return json.entries.fold(<String, Contract>{},
        (Map<String, Contract> previousValue, element) {
      final Contract? object = Contract.fromJson(element.value);
      if (object is Contract) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Contract-objects as value to a dart map
  static Map<String, List<Contract>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Contract>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Contract>>(
          key, Contract.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Contract[description=$description, id=$id, name=$name, number=$number]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && number != null) ||
          (keys?.contains(r'number') ?? false))
        r'number': number,
    };
  }
}
