// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charts.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChartsAdapter extends TypeAdapter<Charts> {
  @override
  final int typeId = 2;

  @override
  Charts read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Charts(
      gromada: fields[0] as dynamic,
      vacancy: fields[1] as dynamic,
      period: fields[2] as dynamic,
      labourmarket: fields[3] as dynamic,
      uridcompany: fields[4] as dynamic,
      fop: fields[5] as dynamic,
      minimum: fields[6] as dynamic,
      gromadwork: fields[7] as dynamic,
      temporarywork: fields[8] as dynamic,
      bezrabnavch: fields[9] as dynamic,
      bezrabprofor: fields[10] as dynamic,
      allpraz: fields[11] as dynamic,
      maintown: fields[12] as dynamic,
      counttown: fields[13] as dynamic,
      sgromada: fields[14] as dynamic,
      people: fields[15] as dynamic,
      mapgromada: fields[16] as dynamic,
      economic: fields[17] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Charts obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.gromada)
      ..writeByte(1)
      ..write(obj.vacancy)
      ..writeByte(2)
      ..write(obj.period)
      ..writeByte(3)
      ..write(obj.labourmarket)
      ..writeByte(4)
      ..write(obj.uridcompany)
      ..writeByte(5)
      ..write(obj.fop)
      ..writeByte(6)
      ..write(obj.minimum)
      ..writeByte(7)
      ..write(obj.gromadwork)
      ..writeByte(8)
      ..write(obj.temporarywork)
      ..writeByte(9)
      ..write(obj.bezrabnavch)
      ..writeByte(10)
      ..write(obj.bezrabprofor)
      ..writeByte(11)
      ..write(obj.allpraz)
      ..writeByte(12)
      ..write(obj.maintown)
      ..writeByte(13)
      ..write(obj.counttown)
      ..writeByte(14)
      ..write(obj.sgromada)
      ..writeByte(15)
      ..write(obj.people)
      ..writeByte(16)
      ..write(obj.mapgromada)
      ..writeByte(17)
      ..write(obj.economic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChartsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
