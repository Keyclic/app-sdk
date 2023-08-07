//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentCreateEquipmentCommandWriteWarranty implements WarrantyWrite {
  /// Returns a new [EquipmentCreateEquipmentCommandWriteWarranty] instance.
  EquipmentCreateEquipmentCommandWriteWarranty({
    this.duration,
    this.startDate,
  });

  /// Returns a new [EquipmentCreateEquipmentCommandWriteWarranty] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentCreateEquipmentCommandWriteWarranty? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate =
        json[r'startDate'] == null ? null : DateTime.parse(json[r'startDate']);
    if (startDate != null && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return EquipmentCreateEquipmentCommandWriteWarranty(
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

    return other is EquipmentCreateEquipmentCommandWriteWarranty &&
        other.duration == duration &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<EquipmentCreateEquipmentCommandWriteWarranty> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <EquipmentCreateEquipmentCommandWriteWarranty>[];
    }

    return json.fold(<EquipmentCreateEquipmentCommandWriteWarranty>[],
        (List<EquipmentCreateEquipmentCommandWriteWarranty> previousValue,
            element) {
      final EquipmentCreateEquipmentCommandWriteWarranty? object =
          EquipmentCreateEquipmentCommandWriteWarranty.fromJson(element);
      if (object is EquipmentCreateEquipmentCommandWriteWarranty) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EquipmentCreateEquipmentCommandWriteWarranty> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EquipmentCreateEquipmentCommandWriteWarranty>{};
    }

    return json.entries
        .fold(<String, EquipmentCreateEquipmentCommandWriteWarranty>{},
            (Map<String, EquipmentCreateEquipmentCommandWriteWarranty>
                    previousValue,
                element) {
      final EquipmentCreateEquipmentCommandWriteWarranty? object =
          EquipmentCreateEquipmentCommandWriteWarranty.fromJson(element.value);
      if (object is EquipmentCreateEquipmentCommandWriteWarranty) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EquipmentCreateEquipmentCommandWriteWarranty-objects as value to a dart map
  static Map<String, List<EquipmentCreateEquipmentCommandWriteWarranty>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EquipmentCreateEquipmentCommandWriteWarranty>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<EquipmentCreateEquipmentCommandWriteWarranty>>(key,
          EquipmentCreateEquipmentCommandWriteWarranty.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'EquipmentCreateEquipmentCommandWriteWarranty[duration=$duration, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (duration != null) r'duration': duration,
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}
