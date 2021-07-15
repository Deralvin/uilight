// To parse this JSON data, do
//
//     final pembayaranModel = pembayaranModelFromJson(jsonString);

import 'dart:convert';

PembayaranModel pembayaranModelFromJson(String str) => PembayaranModel.fromJson(json.decode(str));

String pembayaranModelToJson(PembayaranModel data) => json.encode(data.toJson());

class PembayaranModel {
  PembayaranModel({
    this.metode,
    required this.data,
  });

  String? metode;
  List<Datum> data;

  factory PembayaranModel.fromJson(Map<String, dynamic> json) => PembayaranModel(
    metode: json["metode"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "metode": metode,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.namaMetode,
    this.image,
  });

  String? namaMetode;
  String? image;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    namaMetode: json["nama_metode"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "nama_metode": namaMetode,
    "image": image,
  };
}
