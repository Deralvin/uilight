// To parse this JSON data, do
//
//     final seatModel = seatModelFromJson(jsonString);

import 'dart:convert';

SeatModel seatModelFromJson(String str) => SeatModel.fromJson(json.decode(str));

String seatModelToJson(SeatModel data) => json.encode(data.toJson());

class SeatModel {
  SeatModel({
    this.totalpenumpang,
    this.metodepenjualan,
    this.totalkuota,
    this.totalpenumpangagen,
    required this.baris,
    required this.kolom,
    this.kapasitas,
    required this.petalayout,
    this.totalpenumpangPp,
    this.metodepenjualanPp,
    this.totalkuotaPp,
    this.totalpenumpangagenPp,
    this.barisPp,
    this.kolomPp,
    this.kapasitasPp,
    this.petalayoutPp,
  });

  String? totalpenumpang;
  dynamic metodepenjualan;
  String? totalkuota;
  int? totalpenumpangagen;
  String baris;
  String kolom;
  String? kapasitas;
  Map<String, Petalayout> petalayout;
  String? totalpenumpangPp;
  String? metodepenjualanPp;
  String? totalkuotaPp;
  String? totalpenumpangagenPp;
  String? barisPp;
  String? kolomPp;
  String? kapasitasPp;
  String? petalayoutPp;

  factory SeatModel.fromJson(Map<String, dynamic> json) => SeatModel(
    totalpenumpang: json["totalpenumpang"],
    metodepenjualan: json["metodepenjualan"],
    totalkuota: json["totalkuota"],
    totalpenumpangagen: json["totalpenumpangagen"],
    baris: json["baris"],
    kolom: json["kolom"],
    kapasitas: json["kapasitas"],
    petalayout: Map.from(json["petalayout"]).map((k, v) => MapEntry<String, Petalayout>(k, Petalayout.fromJson(v))),
    totalpenumpangPp: json["totalpenumpang_pp"],
    metodepenjualanPp: json["metodepenjualan_pp"],
    totalkuotaPp: json["totalkuota_pp"],
    totalpenumpangagenPp: json["totalpenumpangagen_pp"],
    barisPp: json["baris_pp"],
    kolomPp: json["kolom_pp"],
    kapasitasPp: json["kapasitas_pp"],
    petalayoutPp: json["petalayout_pp"],
  );

  Map<String, dynamic> toJson() => {
    "totalpenumpang": totalpenumpang,
    "metodepenjualan": metodepenjualan,
    "totalkuota": totalkuota,
    "totalpenumpangagen": totalpenumpangagen,
    "baris": baris,
    "kolom": kolom,
    "kapasitas": kapasitas,
    "petalayout": Map.from(petalayout).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "totalpenumpang_pp": totalpenumpangPp,
    "metodepenjualan_pp": metodepenjualanPp,
    "totalkuota_pp": totalkuotaPp,
    "totalpenumpangagen_pp": totalpenumpangagenPp,
    "baris_pp": barisPp,
    "kolom_pp": kolomPp,
    "kapasitas_pp": kapasitasPp,
    "petalayout_pp": petalayoutPp,
  };
}

class Petalayout {
  Petalayout({
    this.status,
    this.label,
    this.tglberangkat,
    this.idproduk,
    this.idoutletpickup,
    this.idoutletdropoff,
    this.dek,
    this.notiket,
    this.kodebooking,
    this.nama,
    this.istransit,
    this.iscetaktiket,
    this.jenispembayaran,
    this.isboarding,
    this.waktupesan,
    this.kodepromo,
    this.namapromo,
    this.nominal,
    this.isagenverified,
    this.issmoking,
    this.count =0
  });
  int count;
  String? status;
  String? label;
  dynamic tglberangkat;
  dynamic idproduk;
  dynamic idoutletpickup;
  dynamic idoutletdropoff;
  dynamic dek;
  dynamic notiket;
  dynamic kodebooking;
  String? nama;
  int? istransit;
  dynamic iscetaktiket;
  dynamic jenispembayaran;
  dynamic isboarding;
  dynamic waktupesan;
  String? kodepromo;
  String? namapromo;
  int? nominal;
  int? isagenverified;
  int? issmoking;

  factory Petalayout.fromJson(Map<String, dynamic> json) => Petalayout(
    status:json["status"],
    label: json["label"],
    tglberangkat: json["tglberangkat"],
    idproduk: json["idproduk"],
    idoutletpickup: json["idoutletpickup"],
    idoutletdropoff: json["idoutletdropoff"],
    dek: json["dek"],
    notiket: json["notiket"],
    kodebooking: json["kodebooking"],
    nama: json["nama"] == null ? null : json["nama"],
    istransit: json["istransit"] == null ? null : json["istransit"],
    iscetaktiket: json["iscetaktiket"],
    jenispembayaran: json["jenispembayaran"],
    isboarding: json["isboarding"],
    waktupesan: json["waktupesan"],
    kodepromo: json["kodepromo"],
    namapromo: json["namapromo"],
    nominal: json["nominal"],
    isagenverified: json["isagenverified"],
    issmoking: json["issmoking"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "label": label,
    "tglberangkat": tglberangkat,
    "idproduk": idproduk,
    "idoutletpickup": idoutletpickup,
    "idoutletdropoff": idoutletdropoff,
    "dek": dek,
    "notiket": notiket,
    "kodebooking": kodebooking,
    "nama": nama == null ? null : nama,
    "istransit": istransit == null ? null : istransit,
    "iscetaktiket": iscetaktiket,
    "jenispembayaran": jenispembayaran,
    "isboarding": isboarding,
    "waktupesan": waktupesan,
    "kodepromo": kodepromo,
    "namapromo": namapromo,
    "nominal": nominal,
    "isagenverified": isagenverified,
    "issmoking": issmoking,
  };
}
//
// enum Status { P, BLOCK, X, S }
//
// final statusValues = EnumValues({
//   "block": Status.BLOCK,
//   "p": Status.P,
//   "s": Status.S,
//   "x": Status.X
// });
//
// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }
