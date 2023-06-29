//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentCreateEquipmentCommandDataWarranty implements WarrantyData {
  /// Returns a new [EquipmentCreateEquipmentCommandDataWarranty] instance.
  EquipmentCreateEquipmentCommandDataWarranty({
    this.duration,
    this.startDate,
  });

  /// Returns a new [EquipmentCreateEquipmentCommandDataWarranty] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentCreateEquipmentCommandDataWarranty? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate = json[r'startDate'] is String
        ? DateTime.parse(json[r'startDate'])
        : null;
    if (startDate is DateTime && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return EquipmentCreateEquipmentCommandDataWarranty(
      duration: json[r'duration'],
      startDate: startDate,
    );
  }

  /// The duration of the warranty in ISO 8601 duration format.
  String? duration;

  /// The start date of the warranty, in ISO 8601 format.
  DateTime? startDate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EquipmentCreateEquipmentCommandDataWarranty &&
        other.duration == duration &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<EquipmentCreateEquipmentCommandDataWarranty> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <EquipmentCreateEquipmentCommandDataWarranty>[];
    }

    return json.fold(<EquipmentCreateEquipmentCommandDataWarranty>[],
        (List<EquipmentCreateEquipmentCommandDataWarranty> previousValue,
            element) {
      final EquipmentCreateEquipmentCommandDataWarranty? object =
          EquipmentCreateEquipmentCommandDataWarranty.fromJson(element);
      if (object is EquipmentCreateEquipmentCommandDataWarranty) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EquipmentCreateEquipmentCommandDataWarranty> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EquipmentCreateEquipmentCommandDataWarranty>{};
    }

    return json.entries.fold(
        <String, EquipmentCreateEquipmentCommandDataWarranty>{},
        (Map<String, EquipmentCreateEquipmentCommandDataWarranty> previousValue,
            element) {
      final EquipmentCreateEquipmentCommandDataWarranty? object =
          EquipmentCreateEquipmentCommandDataWarranty.fromJson(element.value);
      if (object is EquipmentCreateEquipmentCommandDataWarranty) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EquipmentCreateEquipmentCommandDataWarranty-objects as value to a dart map
  static Map<String, List<EquipmentCreateEquipmentCommandDataWarranty>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EquipmentCreateEquipmentCommandDataWarranty>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<EquipmentCreateEquipmentCommandDataWarranty>>(
          key, EquipmentCreateEquipmentCommandDataWarranty.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'EquipmentCreateEquipmentCommandDataWarranty[duration=$duration, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (duration != null) r'duration': duration,
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}
