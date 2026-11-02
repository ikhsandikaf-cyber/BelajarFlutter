import 'package:get/get.dart';
import 'package:my_app/Models/makanan_model.dart';

class ListMakananController extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(
      namamakanan: "Nasi Goreng", rating: "4.5", harga: "15000", ulasan: "Enak dan gurih", deskripsi: "Nasi goreng adalah hidangan nasi khas Asia Tenggara yang biasanya dibuat dari nasi yang telah dimasak sebelumnya, ditumis dalam sedikit minyak atau margarin, serta dibumbui dengan bahan-bahan seperti kecap manis, bawang merah, bawang putih, terasi halus, asam jawa, dan cabai."
      , gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBdetG5dovrS8FrrfopfgSFHEh1DvIBJ4NH4BM8K4Bxg&s=10"
    ),
    MakananModel(
       namamakanan: "Bakso", rating: "4.0", harga: "12000", ulasan: "Mantap dan pedas", deskripsi: "Bakso adalah hidangan berbentuk bola daging yang lazim ditemukan di Indonesia. Bakso umumnya dibuat dari campuran daging sapi giling dan tepung tapioka, tetapi ada juga bakso yang terbuat dari daging ayam, babi, ikan, udang, kambing, bahkan daging kerbau."
      ,gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVqIds6VCgc-llVIz59Vlp0N_SiHRW44an0X0YB1GoyQ&s=10"
    ),
    MakananModel(
      namamakanan: "Tongseng", rating: "5.0", harga: "16000", ulasan: "Lezat dan empuk", deskripsi: "Tongseng adalah sejenis hidangan gulai daging berkuah dengan bumbu yang lebih kuat. Tongseng pada umumnya menggunakan daging kambing, meskipun ada pula tongseng daging sapi, daging domba, atau daging kerbau."
      , gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKjLxeMbMjfCQ6T0zKYv_PgCpxSJ5uK3sl-BkbHjFcew&s=10"
    ),
     MakananModel(
      namamakanan: "Coto Makasar", rating: "4.3", harga: "15000", ulasan: "Segar dan gurih", deskripsi: "Coto Makassar atau Pallu coto mangkasarak adalah hidangan tradisional Suku Makassar, Sulawesi Selatan. Makanan ini terbuat dari jeroan sapi yang direbus dalam waktu yang lama. Pada umumnya, coto makassar dihidangkan dalam mangkuk dan dinikmati dengan ketupat.."
      , gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzACYhZXnyAzSAUBD1ZIlru_Vv_rOngGjOFPyvSlUgJg&s=10"
    ),
     MakananModel(
      namamakanan: "Rica Biawak", rating: "5.0", harga: "20000", ulasan: "Empuk dan lezat", deskripsi: "salah satu hidangan kuliner ekstrem khas Indonesia terutama populer di Manado (Sulawesi Utara) serta beberapa daerah di Jawa dan Bali yang mengolah daging biawak (nyambek) menggunakan bumbu rica-rica yang kaya rempah dan sangat pedas."
      , gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUbDkDKhYANc7rsxeKTv-Cje_r-AzvE7QWM6Uw-8Sberu11XOYkJMmCMrS&s=10"
    ),
    MakananModel(namamakanan: "Sate Klathak", rating: "4.8", harga: "18000", ulasan: "Lezat dan empuk", deskripsi: "Sate klatak adalah sebuah hidangan sate kambing asal Kapanéwon Pleret, Kabupaten Bantul, Yogyakarta. Dalam bahasa Jawa, kegiatan membakar sate di pembakaran terbuka disebut klathak. Sate ini sangat berbeda dari ragam sate lainnya, yang biasanya memakai garam dan lada sebagai bumbu utamanya."
      , gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY8rQT-l24VBdaHaNLYY-9EZAw7PYVVm8zDUC17UyZ7Q&s=10")
  ];
}