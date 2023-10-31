import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.body,
      required this.author,
      required this.authorImageUrl,
      required this.category,
      required this.imageUrl,
      required this.views,
      required this.createdAt});

  static List<Article> articles = [
    Article(
      id: '1',
      title:
          'Proses Naturalisasi Berjalan, Jay Idzes Selangkah Lebih Dekat Memperkuat Timnas Indonesia',
      subtitle:
          'Timnas Indonesia akan menaturalisasi bek Venezia, Jay Idzes. (Bola.com/Dok.Instagram Jay Idzes).',
      body:
          'Bola.com, Jakarta - Jay Idzes selangkah lebih dekat untuk membela Timnas Indonesia. Naturalisasi bek Venezia itu terus diproses PSSI. \n\nAnggota Komite Eksekutif (Exco) PSSI, Arya Sinulingga, menjelaskan perpindahan kewarganegaraan Jay Idzes telah diteruskan oleh Kementerian Pemuda dan Olahraga (Kemenpora) RI ke Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham) RI. ',
      author: 'Muhammad Adi Yaksa',
      authorImageUrl:
          'https://cdn0-production-images-kly.akamaized.net/Vzfu5BWNwZW2ofbTYN3BTo4mk2o=/100x100/smart/filters:quality(90):strip_icc():format(webp)/kly-media-production/avatars/1868564/original/020166500_1690123525-Bola.com_-_Foto_Muhammad_Adi_Yaksa.jpg',
      category: 'Indonesia',
      views: 1204,
      imageUrl:
          'https://cdn1-production-images-kly.akamaized.net/Czy0Q00TNpMjHM1Ii37nyMwarc8=/20x0:1032x1349/640x853/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4565436/original/068851700_1693986544-Snapinsta.app_370983217_988829892454261_4693557826289478245_n_1080.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title:
          'Ini Alasan Shin Tae-yong Tak Panggil Ivar Jenner ke Skuad Timnas Indonesia Vs Brunei',
      subtitle:
          'Pemain Timnas Argentina, Julian Alvarez (kiri) mengontrol bola dibayangi pemain Timnas Indonesia, Ivar Jenner dalam pertandingan FIFA Matchday 2023 di Stadion Utama Gelora Bung Karno, Jakarta, Senin (19/6/2023). (Bola.com/Bagaskara Lazuardi)',
      body:
          'Bola.com, Jakarta - Perjuangan Timnas Indonesia di Kualifikasi Piala Dunia 2026 akan segera dimulai. Skuad Garuda akan menghadapi Brunei Darussalam dalam dua laga di babak pertama Kualifikasi Piala Dunia 2026. \n\nTimnas Indonesia akan menjadi tuan rumah leg pertama pada Kamis (12/10/2023). Sementara leg kedua akan digelar di Bandar Seri Begawan lima hari kemudian. \n\nPelatih Timnas Indonesia, Shin Tae-yong sudah mengumumkan 25 nama untuk menghadapi laga itu. Menariknya, tidak ada nama Ivar Jenner. \n\nPSSI pun memberikan penjelasan terkait tidak dipanggilnya, Ivar Jenner. Gelandang berusia 19 tahun itu diketahui sedang mengalami cedera. \n\n"Untuk laga Timnas Indonesia Vs Brunei, gelandang Ivar Jenner tidak dipanggil karena sedang mengalami cedera. Cedera itu didapat saat ia memperkuat Jong FC Utrech," jelas PSSI melalui rilis resmi yang mereka keluarkan.',
      author: 'Hery Kurniawan',
      authorImageUrl:
          'https://cdn0-production-images-kly.akamaized.net/87r3zijstpRLcvaGpRSGeQZYvjQ=/100x100/smart/filters:quality(90):strip_icc():format(webp)/kly-media-production/avatars/3235743/original/038778900_1679692507-DSC04790.JPG',
      category: 'Indonesia',
      views: 1204,
      imageUrl:
          'https://cdn1-production-images-kly.akamaized.net/m3LhFnXvvS-5MXQrFAE1LZv-VHE=/0x0:0x0/640x360/filters:quality(75):strip_icc():format(webp):watermark(kly-media-production/assets/images/watermarks/bola/watermark-color-landscape-new.png,565,20,0)/kly-media-production/medias/4472687/original/026543200_1687179434-2R8A7823.JPG',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
  ];

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt,
      ];
}
