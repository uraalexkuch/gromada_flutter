// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vac.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VacAdapter extends TypeAdapter<Vac> {
  @override
  final int typeId = 1;

  @override
  Vac read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Vac(
      numbervac: fields[0] as dynamic,
      dateregvac: fields[1] as dynamic,
      posadavac: fields[2] as dynamic,
      osvitavac: fields[3] as dynamic,
      specvac: fields[4] as dynamic,
      stagvac: fields[5] as dynamic,
      taskvac: fields[6] as dynamic,
      skilsvac: fields[7] as dynamic,
      placevac: fields[8] as dynamic,
      operatinvac: fields[9] as dynamic,
      characteristicsvac: fields[10] as dynamic,
      conditionsvac: fields[11] as dynamic,
      salaryvac: fields[12] as dynamic,
      tel: fields[13] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Vac obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.numbervac)
      ..writeByte(1)
      ..write(obj.dateregvac)
      ..writeByte(2)
      ..write(obj.posadavac)
      ..writeByte(3)
      ..write(obj.osvitavac)
      ..writeByte(4)
      ..write(obj.specvac)
      ..writeByte(5)
      ..write(obj.stagvac)
      ..writeByte(6)
      ..write(obj.taskvac)
      ..writeByte(7)
      ..write(obj.skilsvac)
      ..writeByte(8)
      ..write(obj.placevac)
      ..writeByte(9)
      ..write(obj.operatinvac)
      ..writeByte(10)
      ..write(obj.characteristicsvac)
      ..writeByte(11)
      ..write(obj.conditionsvac)
      ..writeByte(12)
      ..write(obj.salaryvac)
      ..writeByte(13)
      ..write(obj.tel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VacAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
