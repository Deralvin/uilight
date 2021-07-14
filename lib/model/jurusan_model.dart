// To parse this JSON data, do
//
//     final jurusanModel = jurusanModelFromJson(jsonString);

import 'dart:convert';

JurusanModel jurusanModelFromJson(String str) => JurusanModel.fromJson(json.decode(str));

String jurusanModelToJson(JurusanModel data) => json.encode(data.toJson());

class JurusanModel {
  JurusanModel({
    this.cabang,
    this.jurusan,
    this.singkatan,
    this.alamat,
  });

  String? cabang;
  String? jurusan;
  String? singkatan;
  String? alamat;

  factory JurusanModel.fromJson(Map<String, dynamic> json) => JurusanModel(
    cabang: json["cabang"],
    jurusan: json["jurusan"],
    singkatan: json["singkatan"],
    alamat: json["alamat"],
  );

  Map<String, dynamic> toJson() => {
    "cabang": cabang,
    "jurusan": jurusan,
    "singkatan": singkatan,
    "alamat": alamat,
  };
}
