import 'package:flutter/cupertino.dart';
import 'package:uilight/model/jurusan_model.dart';
import 'package:uilight/model/pembayaran_model.dart';
class Value{
   List<JurusanModel> jurusanawal = [
     JurusanModel(cabang: "BEKASI",alamat: "BEKASI",jurusan: "LIVING HARAPAN INDAH",singkatan: "LHI"),
     JurusanModel(cabang: "BEKASI",alamat: "LIVING PLAZA BEKASI BARAT, BEKASI BARAT",jurusan: "LIVING PLAZA BEKASI BARAT",singkatan: "LBB"),
     JurusanModel(cabang: "BEKASI",alamat: "MEGA BEKASI HYPERMALL, JL A YANI NO 1 RT004/RW001, MARGA JAYA, KEC BEKASI SEL, KOTA BKS, JAWA BARAT",jurusan: "MEGA BEKASI HYPERMALL",singkatan: "MBH"),
     JurusanModel(cabang: "CIKARANG",alamat: "JL MH THAMRIN KAV 100, CIBATU, SUKARESMI, CIKARANG SEL, BEKASI, JAWA BARAT",jurusan: "CITYWALK LIPPO CIKARANG",singkatan: "LPC"),
  ];

   List<JurusanModel> jurusanTujuan = [
     JurusanModel(cabang: "CIKARANG",alamat: "LIVING PLAZA JABABEKA, KAWASAN INDUSTRI JABABEKA",jurusan: "LIVING PLAZA JABABEKA",singkatan: "LPB"),
   ];

   List<Widget> seats = [

   ];

   List<PembayaranModel> metode=[
     PembayaranModel(metode: "ATM,Mobile,Internet Banking",data: [
       Datum(namaMetode: "ATM / E-Banking",image: "https://indowp.net/wp-content/uploads/2013/11/finpay.jpg")
     ]),
     PembayaranModel(metode: "Pembayaran Instant",data: [
       Datum(namaMetode: "GO-PAY",image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Gopay_logo.svg/1024px-Gopay_logo.svg.png"),
       Datum(namaMetode: "Ovo",image: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Logo_ovo_purple.svg/1280px-Logo_ovo_purple.svg.png"),
       Datum(namaMetode: "Dana",image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Logo_dana_blue.svg/1280px-Logo_dana_blue.svg.png"),
       Datum(namaMetode: "GO-PAY",image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Gopay_logo.svg/1024px-Gopay_logo.svg.png"),
       Datum(namaMetode: "Ovo",image: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Logo_ovo_purple.svg/1280px-Logo_ovo_purple.svg.png"),
       Datum(namaMetode: "Dana",image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Logo_dana_blue.svg/1280px-Logo_dana_blue.svg.png"),
     ]),
     PembayaranModel(metode: "Gerai Retail",data: [
       Datum(namaMetode: "Alfamart",image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Alfamart_logo.svg/1200px-Alfamart_logo.svg.png")
     ])
   ];
}
