// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pasport.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PassportAdapter extends TypeAdapter<Passport> {
  @override
  final int typeId = 3;

  @override
  Passport read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Passport(
      gromada: fields[0] as dynamic,
      place: fields[1] as dynamic,
      namerobot: fields[2] as dynamic,
      adressur: fields[3] as dynamic,
      adresreal: fields[4] as dynamic,
      transport: fields[5] as dynamic,
      kved: fields[6] as dynamic,
      shtat: fields[7] as dynamic,
      profesia: fields[8] as dynamic,
      timework: fields[9] as dynamic,
      house: fields[10] as dynamic,
      nameboss: fields[11] as dynamic,
      telhr: fields[12] as dynamic,
      big: fields[13] as dynamic,
      telrec: fields[14] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Passport obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.gromada)
      ..writeByte(1)
      ..write(obj.place)
      ..writeByte(2)
      ..write(obj.namerobot)
      ..writeByte(3)
      ..write(obj.adressur)
      ..writeByte(4)
      ..write(obj.adresreal)
      ..writeByte(5)
      ..write(obj.transport)
      ..writeByte(6)
      ..write(obj.kved)
      ..writeByte(7)
      ..write(obj.shtat)
      ..writeByte(8)
      ..write(obj.profesia)
      ..writeByte(9)
      ..write(obj.timework)
      ..writeByte(10)
      ..write(obj.house)
      ..writeByte(11)
      ..write(obj.nameboss)
      ..writeByte(12)
      ..write(obj.telhr)
      ..writeByte(13)
      ..write(obj.big)
      ..writeByte(14)
      ..write(obj.telrec);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PassportAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
