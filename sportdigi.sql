-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 05:54 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportdigi`
--

-- --------------------------------------------------------

--
-- Table structure for table `beritaadmin`
--

CREATE TABLE `beritaadmin` (
  `id` int(255) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `gambar` varchar(100) NOT NULL,
  `catatan` text DEFAULT NULL,
  `penulis` varchar(255) NOT NULL,
  `info_kategori` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beritaadmin`
--

INSERT INTO `beritaadmin` (`id`, `judul`, `isi`, `waktu`, `gambar`, `catatan`, `penulis`, `info_kategori`, `status`) VALUES
(52, 'aaaaaaaaaa', '<p>IM THE BEST</p>\r\n', '2021-05-21 11:52:52', '60a79eda96d2e.jpg', '', 'jono', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `beritaeditor`
--

CREATE TABLE `beritaeditor` (
  `id` int(255) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `gambar` varchar(100) NOT NULL,
  `catatan` text DEFAULT NULL,
  `penulis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beritaeditor`
--

INSERT INTO `beritaeditor` (`id`, `judul`, `isi`, `waktu`, `gambar`, `catatan`, `penulis`) VALUES
(60, 'Hasil F1 GP Monako: Max Verstappen Juara, Sainz Kedua', '<p>Monte Carlo - Pebalap Red Bull Max Verstappen memetik kemenangan keduanya di F1 2021. Verstappen tanpa kendala berarti tampil sebagai pemenang GP Monako, Carlos Sainz kedua.<br />\r\nDengan hasil ini, Verstappen berhak memimpin klasemen sementara menggusur juara bertahan Lewis Hamilton. Verstappen mengoleksi 25 poin hasil lima balapan, unggul empat poin dari Hamilton dan 49 poin dari Lando Norris di peringkat ketiga.</p>\r\n\r\n<p>Di Sirkuit de Monaco, Minggu (23/5/2021), driver Ferrari Charles Leclerc bernasib sial. Pebalap tuan rumah itu mengalami masalah girboks sebelum start sehingga terpaksa urung balapan.</p>\r\n\r\n<p>Baca juga: F1 GP Monako 2021: Peluang Verstappen Salip Hamilton di Klasemen<br />\r\nDengan demikian, Max Verstappen yang start kedua menjadi pebalap di grid paling depan. Meskipun posisi pertama yang sedianya ditempati Leclerc tetap dikosongi.</p>\r\n\r\n<p>Setelah lampu hijau tanda balapan dimulai padam, Verstappen melaju mulus untuk memimpin rombongan. Driver Red Bull itu dibuntuti Valtteri Bottas, Carlos Sainz, dan Lando Norris. Usai 10 putaran, Lewis Hamilton belum beranjak dari posisi enam di depan Sebastian Vettel.</p>\r\n\r\n<p>Jarak Bottas dengan Verstappen di depan hanya 1,5 detik saja di putaran ke-14. Lance Stroll sempat keluar lintasan pada lima putaran berselang.</p>\r\n\r\n<p>Sebuah drama terjadi di putaran ke-31. Bottas mesti out dari balapan karena kendala teknis saat pitstop. Ban kanan depan mobil Bottas tiba-tiba tidak dapat diganti.</p>\r\n\r\n<p>Baca juga: Kualifikasi F1 GP Monako 2021: Leclerc Raih Pole, Hamilton Start Ketujuh<br />\r\nVerstappen sendiri menjalani pitstop dengan lancar di putaran 40. Driver Belanda itu tetap memimpin balapan, diikuti Sainz, Norris, Sergio Perez, dan Vettel. Lewis Hamilton melorot ke urutan ketujuh di belakang Gasly.</p>\r\n\r\n<p>Verstappen semakin nyaman terdepan. Norris terus memburu Sainz untuk memperebutkan posisi kedua. Namun, hingga putaran ke-78, posisi tidak berubah. Verstappen melintasi garis finis pertama disusul Sainz dan Norris yang melengkapi podium.</p>\r\n', '2021-05-24 02:21:22', '60ab0da2316f5.jpeg', NULL, 'jono');

-- --------------------------------------------------------

--
-- Table structure for table `beritapenulis`
--

CREATE TABLE `beritapenulis` (
  `id` int(255) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `gambar` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Draft',
  `catatan` text DEFAULT NULL,
  `penulis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beritapenulis`
--

INSERT INTO `beritapenulis` (`id`, `judul`, `isi`, `waktu`, `gambar`, `status`, `catatan`, `penulis`) VALUES
(42, 'C5', '<p>C5</p>\r\n', '2021-05-21 01:03:38', '60a706ea73e9e.jpg', 'Uploaded', NULL, 'zaldi'),
(46, 'C3', '<p>C3</p>\r\n', '2021-05-21 05:39:20', '60a747885a5ab.jpg', 'Uploaded', NULL, 'zaldi'),
(50, 'C7', '<p>C7</p>\r\n', '2021-05-21 05:40:01', '60a747b121f2e.png', 'Dropped', NULL, 'zaldi'),
(51, 'IKI BERITAKU', '<p>VISI MISI MISI MISI PC PC&nbsp;</p>\r\n', '2021-05-21 11:13:14', '60a795ca0a598.jpg', 'Dropped', NULL, 'jono'),
(52, 'aaaaaaaaaa', '<p>IM THE BEST</p>\r\n', '2021-05-21 11:51:54', '60a79eda96d2e.jpg', 'Dropped', NULL, 'jono'),
(53, 'Lionel Messi Tutup Musim Lebih Cepat, Absen Lawan Eibar', '&lt;p&gt;&lt;strong&gt;Barcelona&lt;/strong&gt;&amp;nbsp;-&amp;nbsp;Lionel Messi&amp;nbsp;dipastikan menutup musim ini lebih cepat. Striker Argentina itu absen saat&amp;nbsp;Barcelona&amp;nbsp;melawan&amp;nbsp;Eibar&amp;nbsp;di pekan terakhir&amp;nbsp;Liga Spanyol.&lt;/p&gt;\r\n\r\n&lt;p&gt;Messi dipastikan absen saat Barcelona melawan Eibar di Stadion Municipal de Ipurua, Sabtu (22/5/2021) malam WIB. Itu merupakan laga ke-38 Blaugrana di&amp;nbsp;LaLiga, atau yang terakhir di musim 2020/2021.&lt;/p&gt;\r\n\r\n&lt;p&gt;Hal itu diumumkan Barcelona di media sosialnya. Striker andalannya absen di latihan dan pertandingan melawan Eibar dengan izin dari pelatih.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;quot;Leo Messi tidak latihan hari ini dengan izin pelatih dan tidak akan bermain melawan Eibar,&amp;quot; cuit akun Twitter Barcelona.&lt;/p&gt;\r\n\r\n&lt;p&gt;Absennya&amp;nbsp;Lionel Messi&amp;nbsp;takkan berpengaruh banyak pada nasib di pekan terakhir&amp;nbsp;Barcelona. Anak asuh&amp;nbsp;Ronald Koeman&amp;nbsp;sendiri sudah dipastikan gagal merebut gelar juara Liga Spanyol.&lt;br /&gt;\r\nMusim ini, Messi tampil 47 kali untuk Barcelona. Sebanyak 38 gol ia cetak, dengan 30 gol di antaranya dilesakkan di&amp;nbsp;Liga Spanyol.Kekalahan 1-2 dari Celta Vigo di pekan ke-37, membuat Barcelona dipastikan gagal mengejar&amp;nbsp;Atletico Madrid&amp;nbsp;dan&amp;nbsp;Real Madrid. Los Cules tertahan di peringkat tiga&amp;nbsp;klasemen Liga Spanyol&amp;nbsp;dengan 76 poin, terpaut empat angka dari kedua rivalnya dengan satu laga tersisa.&lt;/p&gt;\r\n\r\n&lt;p&gt;Dengan penampilannya, Messi memecahkan rekor penampilan terbanyak untuk Barcelona, dengan sudah bermain 778 kali, melewati catatan Xavi Hernandez. Penyerang Argentina itu juga mempersembahkan trofi&amp;nbsp;Copa del Rey&lt;a href=&quot;https://www.detik.com/tag/copa-del-rey&quot;&gt;&amp;nbsp;&lt;/a&gt;buat timnya, dengan mengalahkan&amp;nbsp;Athletic Bilbao&amp;nbsp;4-0.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\nYang menjadi sorotan,&amp;nbsp;Barcelona&amp;nbsp;kemungkinan melewatkan laga terakhirnya bersama&amp;nbsp;Lionel Messi. Sebab, kontrak La Pulga akan habis Juni mendatang, dan sejauh ini belum diperpanjang. Jika jadi hengkang, maka&amp;nbsp;Lionel Messi&amp;nbsp;melewatkan laga terakhirnya bersama&amp;nbsp;Barcelona&amp;nbsp;di kompetisi resmi.Selanjutnya, Messi sendiri akan kembali ke Argentina. Ia akan bersiap berlaga di&amp;nbsp;Copa America, yang berlangsung pada 11 Juni-11 Juli mendatang.&lt;/p&gt;\r\n', '2021-05-21 13:06:34', '60a7b90ae7ec2.jpeg', 'Dropped', NULL, 'jono'),
(54, 'Dear Harry Kane, Siap Jadi Rebutan Liverpool, MU, dan Man City?', '<p><strong>London</strong>&nbsp;-&nbsp;Mantan manajer&nbsp;Tottenham Hotspur,&nbsp;Harry Redknapp, menilai&nbsp;Liverpool,&nbsp;Manchester United, dan&nbsp;Manchester City<a href=\"https://www.detik.com/tag/manchester-city\">&nbsp;</a>paling berpeluang mendapatkan&nbsp;Harry Kane.</p>\r\n\r\n<p>Harry Kane santer dilaporkan ingin meninggalkan Tottenham pada musim panas ini. Kapten timnas Inggris ini bahkan disebut sudah mengajukan permintaan kepada bos Tottenham,&nbsp;Daniel Levy, untuk dijual. Tottenham dikabarkan bakal mematok harga sebesar 120 juta euro.</p>\r\n\r\n<p>Ambisi besar Kane yang haus akan trofi disinyalir menjadi sebab dirinya ingin meninggalkan The Lilywhites. Tottenham sulit mewujudkan keinginan Kane tersebut. Apalagi, Spurs di musim ini sudah dipastikan gagal lolos ke Liga Champions</p>\r\n\r\n<p>Kapten timnas Inggris ini juga sempat mengungkapkan keinginannya mengikuti jejak Lionel Messi dan Cristiano Ronaldo menjadi pemain terbaik di dunia. Untuk berada di level tersebut, Kane jelas butuh raihan trofi.</p>\r\n\r\n<p><br />\r\nRedknapp menilai semua tim jelas bakal menginginkan Kane. Menilik dari kualitas yang dimiliki penyerang 27 tahun ini. Kane mampu mengemas 32 gol dan 16 assist di semua ajang musim ini.Spekulasi terkait masa depan Kane mulai mencuat dibicarakan seiring dengan kabar di atas. Mantan manajer Tottenham,&nbsp;Harry Redknapp&nbsp;turut mengomentari isu kepindahan Kane ini.</p>\r\n\r\n<p>Namun, Redknapp mengungkapkan bahwa tiga tim raksasa Liga Inggris,&nbsp;Liverpool,&nbsp;Manchester United, dan&nbsp;Manchester City&nbsp;paling berpeluang untuk merekrut Kane. Mengingat, Kane juga disebut tak ingin meninggalkan Liga Inggris.</p>\r\n\r\n<p>&quot;Dia akan menjadi rekrutan yang luar biasa bagi siapa pun akan mendatangkannya,&quot; Redknapp pada acara Big Night Out Redknapp di Sky.</p>\r\n\r\n<p>&quot;Jika dia pergi ke Man United, misalnya, Anda akan berharap mereka tahun depan memiliki peluang besar untuk menang. Dia akan membuat perbedaan besar. &quot;</p>\r\n\r\n<p>&quot;Dia bisa mengubah tim. Liverpool, Man United, Man City. Kemana dia akan pergi? Salah satu di antara ketiganya,&quot; jelasnya.</p>\r\n', '2021-05-21 13:17:40', '60a7b2f44b277.jpeg', 'Dropped', NULL, 'jono'),
(55, 'Conor McGregor Jadi Atlet Terkaya di Dunia, Duitnya Dari Mana?', '', '2021-05-21 13:21:38', '60a8cbad801b9.jpeg', 'Uploaded', NULL, 'jono'),
(57, 'Putri KW, Pemutus Paceklik Gelar Tunggal Putri Indonesia', '<p>Putri Kusuma Wardani berhasil memutus paceklik gelar tunggal putri Indonesia usai juara Spain Master 2021.<br />\r\nPutri KW keluar sebagai yang terbaik usai mengalahkan wakil Denmark, Line Christophersen di partai puncak. Pebulutangkis berusia 18 itu menang meyakinkan lewat permainan dua gim 21-15, 21-10 di Palacio de Deportes Carolina Marin, Huelva, Minggu (23/5).</p>\r\n\r\n<p>Hasil itu bukan hanya jadi debut manis bagi Putri KW di turnamen Super 300. Ia juga membuka kembali keran prestasi di sektor tunggal putri setelah Fitriani.</p>\r\n\r\n<p>Selain Fitriani dan Putri KW, Adriyanti Firdasari dan Lindaweni Fanetri juga pernah mengukir prestasi. Firdasari juara Indonesia Masters 2014, sementara Lindaweni berjaya di Syed Modi 2012.</p>\r\n\r\n<p>Putri KW juga jadi salah satu dari empat wakil Indonesia yang jadi juara di Spain Master 2021. Tiga wakil lainnya yakni ganda putri Yulfira Barkah/Febby Valencia Dwijayanti Gani, ganda putra Pramudya Kusumawardana/Yeremia Erich Yoche Yacob Rambitan, dan ganda campuran Rinov Rivaldy/Pitha Haningtyas Mentari.</p>\r\n\r\n<p>Sementara itu, Chico Aura Dwi Wardoyo jadi satu-satunya wakil Indonesia yang kalah di final. Chicho menyerah dari pebulutangkis Prancis, Toma Junior Popov lewat permainan dua gim 15-21, 17-21.</p>\r\n', '2021-05-24 02:15:07', '60ab0c2b33258.jpeg', 'Uploaded', NULL, 'jono'),
(58, 'Dorongan untuk Membatalkan Olimpiade Tokyo Makin Menguat', '<p>Saat Obor Olimpiade melewati Hiroshima pekan ini, panitia berusaha agar pawai menjauh dari jalanan. Upacara menyalakan obor digelar tanpa penonton. Kunjungan Ketua Komite Olimpiade Internasional (IOC) Thomas Bach ke Jepang dibatalkan. Hiroshima bersama tuan rumah Tokyo adalah salah satu dari tujuh prefektur yang berada di masa darurat Covid-19.</p>\r\n\r\n<p>Olimpiade Tokyo menunjukkan langkah besar yang perlu dilakukan untuk menggelar ajang olahraga terbesar di dunia selama pandemi. Sejauh ini Jepang berhasil menghindari ledakan wabah terutama karena berhasil menjaga ketat perbatasan pada musim gugur tahun lalu.</p>\r\n\r\n<p>Namun dua pertiga kasus kematian dilaporkan pada tahun ini. Gelombang wabah terbaru yang didorong varian Covid-19 yang lebih menular telah membebani sistem kesehatan regional. Sementara program vaksinasi berjalan lambat, di sisi lain pembukaan Olimpiade tinggal dua bulan lagi.</p>\r\n\r\n<p>Sekitar 15 ribu atlet dan mungkin 90 ribu kru dari 200 negara akan berkumpul di Jepang. Banyak warga Jepang yang khawatir Olimpiade memicu ledakan penularan Covid-19. Sekitar 60 persen responden menilai agar Olimpiade dibatalkan.</p>\r\n\r\n<p>Pada Ahad (23/5) Economist melaporkan panitia yakin Olimpiade dapat digelar dengan aman. Mereka mencontohkan ajang olahraga internasional yang digelar selama pandemi lainnya seperti Master 2021, kompetisi golf di Amerika Serikat (AS).</p>\r\n\r\n<p>Jepang ingin membuat wilayah terisolasi di sekitar desa-desa Olimpiade dan mewajibkan vaksin bagi para atlet. Bach mengeklaim ketika Olimpiade dibuka sudah sekitar 80 persen orang yang berada di desa Olimpiade sudah divaksin. Jepang sudah memutuskan untuk melarang penontong asing sementara penonton dalam negeri akan diputuskan bulan Juni.</p>\r\n\r\n<p>Banyak dokter dan pakar kesehatan yang tidak yakin Olimpiade dapat digelar dengan aman. Jepang dapat menggunakan sumber daya untuk melakukan pemeriksaan, perawatan, atau memvaksin masyarakatnya daripada harus menggelar Olimpiade.</p>\r\n\r\n<p>Pergerakan masyarakat selama liburan bulan Mei meningkatkan angka kasus positif di Jepang. Olimpiade rencananya digelar di sembilan prefektur termasuk Tokyo dan melibatkan kamp-kamp pelatihan dan sukarelawan dari seluruh negeri sehingga pergerakan hampir tidak mungkin dapat dihindari.</p>\r\n\r\n<p>Kepala rumah sakit prefektur Mei dan salah satu editor British Medical Journal Taniguchi Kiyosu meminta Olimpiade dibatalkan. Puluhan kota membatalkan rencana mereka untuk membuka pintu bagi warga asing yang ingin berlatih.</p>\r\n\r\n<p>Varian baru Covid-19 yang lebih menular juga memperumit masalah. Sementara varian B.1.1.7 sudah menyebar ke mana-mana. Taniguchi mengatakan konvergensi orang-orang dari seluruh di dunia di Jepang dapat membentuk virus bermutasi dan masuk.</p>\r\n\r\n<p>&quot;Jepang akan menjadi kendaraan untuk bercampur,&quot; kata Taniguchi seperti dikutip Economist.</p>\r\n\r\n<p>Virolog yang menjadi salah satu pakar yang bertugas memberi saran pada pemerintah, Oshitani Hitoshi, mengatakan peserta Olimpiade dapat membawa virus ke negara asal mereka. Banyak negara di seluruh dunia yang sistem kesehatannya tidak sebaik Jepang.</p>\r\n\r\n<p>&quot;Satu saja kasus impor dapat memicu wabah yang lebih besar,&quot; kata Oshitani.</p>\r\n\r\n<p>Rakyat Jepang mungkin merasa lebih aman jika ada proteksi dari virus yang mungkin berasal dari para atlet. Berdasarkan pelacak Covid-19 the Economist hanya 4,5 persen orang dewasa Jepang yang menerima setidaknya dosis pertama virus corona. Negeri Sakura masih di belakang Myanmar.</p>\r\n\r\n<p>Perdana Menteri Yoshihide Suga ingin program vaksinasi untuk orang lanjut usia sudah selesai pada akhir Juni. Namun hanya dua pertiga warga Tokyo yang dapat melakukan vaksinasi. Masalahnya bukan pada pasokan vaksin sebab surat kabar Nikkie memprediksi ada sekitar 10 juta dosis vaksin yang tidak terpakai di dalam freezer.</p>\r\n\r\n<p>Pada titik ini masalahnya juga bukan pada permintaan. Walaupun masyarakat Jepang cukup ragu pada vaksin umum tapi hal itu tidak berlaku pada vaksin Covid-19. Anggota gugus tugas Covid-19 pemerintah Shimoaraiso Makoto mengatakan pusat vaksinasi massal yang baru dibuka di Osaka pekan ini membuka 25 ribu vaksinasi dan sudah penuh dalam 25 menit.</p>\r\n\r\n<p>Masalahnya pada kekusutan logistik dan birokrasi yang memperlambat proses vaksinasi. Situs pendaftaran dan saluran telepon vaksin mengalami masalah teknis.</p>\r\n\r\n<p>Kementerian Kesehatan tertahan peraturan yang mengharuskan uji coba pada setiap vaksin asing. Sejauh ini Jepang hanya menyetujui vaksin dari Pfizer-BioNTech. Negeri Sakura juga kekurangan orang untuk mengatur vaksin karena undang-undang Jepang mengharuskan hanya dokter dan perawat yang boleh memberikan vaksin.</p>\r\n\r\n<p>Pengecualian sudah diberikan pada dokter gigi sementara pemerintah mencoba untuk memberikan wewenang pada apoteker untuk menyuntikkan vaksin. Oshitani mengatakan kesalahan yang dilakukan praktisi yang tak berpengalaman dapat berakibat fatal.</p>\r\n\r\n<p>&quot;Kami di Jepang sangat, sangat sensitif terhadap kejadian buruk. Satu kejadian dapat menahan seluruh proses vaksinasi,&quot; katanya.</p>\r\n\r\n<p>Akan tetapi tampaknya dalam beberapa pekan Jepang akan mempercepat program vaksinasi mereka. Sebab pemerintah diperkirakan akan menyetujui penggunaan vaksin Moderna dan AstraZeneca. Kementerian Pertahanan juga akan membangun lebih banyak fasilitas vaksinasi.</p>\r\n', '2021-05-24 02:15:55', '60ab0c5b449d2.jpeg', 'Uploaded', NULL, 'jono'),
(59, 'Cristiano Ronaldo Top Skor Liga Italia', '<p>Jakarta,&nbsp;-&nbsp;Penyerang Juventus Cristiano Ronaldo menyelesaikan musim 2020/2021 sebagai pencetak gol terbanyak Liga Italia.<br />\r\nPemain berusia 36 tahun itu mencetak 29 gol saat Bianconeri menyelesaikan musim ini di posisi keempat.</p>\r\n\r\n<p>Ronaldo telah memenangkan perburuan gelar top Skor untuk pertama kalinya pada musim ketiganya di Italia. Secara total, Ronaldo telah mencetak 81 gol di Liga Italia.</p>\r\n\r\n<p>Ronaldo menjadi pencetak gol terbanyak Liga Inggris pada 2007/2008 saat di Manchester United dengan 31 gol yang membantunya memenangkan Ballon d&#39;Or pertamanya tahun itu.</p>\r\n\r\n<p>Secara total, Ronaldo telah mencetak 118 gol dalam 292 penampilan untuk United sebelum pergi untuk bergabung dengan Real Madrid pada 2009.</p>\r\n\r\n<p>Banner Live Streaming MotoGP 2021<br />\r\nSelama di Inggris, ia dua kali memenangkan penghargaan: Pemain Terbaik dan Football Writers Awards pada 2006-07 dan 2007-08.</p>\r\n\r\n<p>Ronaldo juga telah memenangkan trofi Pichichi untuk pencetak gol terbanyak La Liga dalam tiga kesempatan: 2010/2011 (40 gol), 2013/2014 (31 gol), dan 2015/2016 (48 gol).</p>\r\n', '2021-05-24 02:19:11', '60ab0d1fb738d.jpeg', 'Uploaded', NULL, 'jono'),
(60, 'Hasil F1 GP Monako: Max Verstappen Juara, Sainz Kedua', '<p>Monte Carlo - Pebalap Red Bull Max Verstappen memetik kemenangan keduanya di F1 2021. Verstappen tanpa kendala berarti tampil sebagai pemenang GP Monako, Carlos Sainz kedua.<br />\r\nDengan hasil ini, Verstappen berhak memimpin klasemen sementara menggusur juara bertahan Lewis Hamilton. Verstappen mengoleksi 25 poin hasil lima balapan, unggul empat poin dari Hamilton dan 49 poin dari Lando Norris di peringkat ketiga.</p>\r\n\r\n<p>Di Sirkuit de Monaco, Minggu (23/5/2021), driver Ferrari Charles Leclerc bernasib sial. Pebalap tuan rumah itu mengalami masalah girboks sebelum start sehingga terpaksa urung balapan.</p>\r\n\r\n<p>Baca juga: F1 GP Monako 2021: Peluang Verstappen Salip Hamilton di Klasemen<br />\r\nDengan demikian, Max Verstappen yang start kedua menjadi pebalap di grid paling depan. Meskipun posisi pertama yang sedianya ditempati Leclerc tetap dikosongi.</p>\r\n\r\n<p>Setelah lampu hijau tanda balapan dimulai padam, Verstappen melaju mulus untuk memimpin rombongan. Driver Red Bull itu dibuntuti Valtteri Bottas, Carlos Sainz, dan Lando Norris. Usai 10 putaran, Lewis Hamilton belum beranjak dari posisi enam di depan Sebastian Vettel.</p>\r\n\r\n<p>Jarak Bottas dengan Verstappen di depan hanya 1,5 detik saja di putaran ke-14. Lance Stroll sempat keluar lintasan pada lima putaran berselang.</p>\r\n\r\n<p>Sebuah drama terjadi di putaran ke-31. Bottas mesti out dari balapan karena kendala teknis saat pitstop. Ban kanan depan mobil Bottas tiba-tiba tidak dapat diganti.</p>\r\n\r\n<p>Baca juga: Kualifikasi F1 GP Monako 2021: Leclerc Raih Pole, Hamilton Start Ketujuh<br />\r\nVerstappen sendiri menjalani pitstop dengan lancar di putaran 40. Driver Belanda itu tetap memimpin balapan, diikuti Sainz, Norris, Sergio Perez, dan Vettel. Lewis Hamilton melorot ke urutan ketujuh di belakang Gasly.</p>\r\n\r\n<p>Verstappen semakin nyaman terdepan. Norris terus memburu Sainz untuk memperebutkan posisi kedua. Namun, hingga putaran ke-78, posisi tidak berubah. Verstappen melintasi garis finis pertama disusul Sainz dan Norris yang melengkapi podium.</p>\r\n', '2021-05-24 02:21:22', '60ab0da2316f5.jpeg', 'Proposed', NULL, 'jono'),
(61, 'Spain Masters 2021: Menangi All Indonesia Final, Pramudya/Yeremia Juara', '<p>Huelva - Pramudya Kusumawardana/Yeremia Erich Rambitan juara ganda putra Spain Masters 2021. Pramudya/Yeremia mengalahkan Sabar Gautama/Moh. Reza Pahlevi.<br />\r\nPada laga final yang dihelat di Palacio de Deportes Carolina Marin, Huelva, Spanyol, Minggu (23/5/2021) sore WIB, Pramudya/Yeremia yang diunggulkan di tempat kelima memang dijagokan menang atas Sabar/Reza.</p>\r\n\r\n<p>Pramudya/Yeremia tancap gas sejak gim pertama dimulai dan sudah unggul 8-5 sebelum menutup interval dengan 11-8. Pramudya/Yeremia tak tertahankan sejak interval dan menang mudah 21-15.</p>\r\n\r\n<p>Pada gim kedua, Sabar/Reza balik menekan Pramudya/Yeremia dan membuat kompatriotnya kesulitan. Sabar/Reza unggul jauh 8-3 sebelum memimpin 11-5 di interval.</p>\r\n\r\n<p>Baca juga: Spain Masters 2021: Indonesia Tambah Gelar Juara dari Tunggal Putri<br />\r\nSetelah itu duel di gim kedua terbilang sengit karena Pramudya/Yeremia mampu mengimbangi Sabar/Reza dan bahkan sempat memangkas jadi 12-15. Skor sempat tipis 17-18 untuk Sabar/Reza, sebelum akhirnya menang 21-18.</p>\r\n\r\n<p>Pada gim ketiga, Pramudya/Yeremia sempat unggul jauh 6-1 sebelum didekati 5-6, tapi akhirnya menutup interval gim ini dengan 11-6. Pramudya/Yeremia tak mau dibalap lagi dan menaikkan intensitas permainannya.</p>\r\n\r\n<p>Pramudya/Yeremia unggul 18-12 sebelum menutup final ganda putra dengan kemenangan 21-14. Indonesia sudah mendapat tiga gelar di Spain Masters setelah di nomor tunggal putri dan ganda putri.</p>\r\n\r\n<p>Indonesia berpeluang meraih satu gelar tersisa dari nomor ganda campuran saat Rinov Rivaldy/Pitha Haningtya Mentari menghadapi unggul kedua Niclas Nohr/Amalie Magelund dari Denmark.</p>\r\n', '2021-05-24 02:22:21', '60ab0ddd85d78.jpeg', 'Uploaded', NULL, 'jono'),
(62, 'Andi Gilang Dukung MotoGP Mandalika, Takut Sirkuit Tak Muat', '<p>Sirkuit Mandalika dijadwalkan akan menggelar balapan MotoGP Indonesia pada Maret 2022.<br />\r\nNamun, Andi Gilang khawatir penonton di MotoGP Indonesia pada Maret mendatang membeludak hingga Sirkuit Mandalika tidak cukup menampung. Andi Gilang yakin balapan pertama MotoGP Indonesia di Mandalika akan mendapat sambutan luar biasa.</p>\r\n\r\n<p>MotoGP Indonesia di Sirkuit Mandalika akan menjalani debut Grand Prix pada musim 2022. CEO Dorna Sport, Carmelo Ezpeleta, MotoGP Indonesia di Mandalika salah satu seri terpenting.</p>\r\n\r\n<p>Terkait peluang tampil di Sirkuit Mandalika musim depan, Andi Gilang mengatakan semua tergantung prestasinya di Moto3 musim ini. Pembalap 23 tahun itu yakin prestasi di Moto3 akan membuatnya bisa melakoni balapan di GP Indonesia musim depan.</p>\r\n\r\n<p>&quot;Kalau buat Gilang soal sendiri seberapa yakin bisa tampil di GP Indonesia, semua otomatis balik lagi ke prestasi. Gilang juga memikirkan ke sana, tapi yang jelas fokus buat yang sekarang. Kalau Gilang jalani yang sekarang baik, pasti bisa tampil buat tahun depan di Indonesia,&quot; ucap Andi Gilang.</p>\r\n\r\n<p>Setelah tampil di Moto2 musim lalu dan turun ke Moto3 musim ini, Andi Gilang sukses merebut poin untuk kali pertama di ajang Grand Prix setelah finis di posisi 15 pada Moto3 Prancis, akhir pekan lalu. Pembalap Honda Team Asia untuk menjadi rider pertama Indonesia yang merebut poin sejak Doni Tata pada 2013.</p>\r\n\r\n<p>&quot;Kalau Moto3 cc-nya kecil. Jadi, hampir semua rider bisa fight bareng sampai lap terakhir. Beda dengan Moto2, karena kalau di Moto3 kita juga butuh slipstream. Kalau Moto3 kita bisa fight sampai lap terakhir, Moto2 karena cc-nya besar kita harus manage kondisi ban biar tidak cepat habis,&quot; ucap Andi Gilang terkait balapan di Moto3.</p>\r\n\r\n<p>Live streaming MotoGP Italia di Mugello, 30 Mei, bisa disaksikan melalui CNNIndonesia.com. Sedangkan siaran langsung balapan akan disiarkan Trans7.</p>\r\n', '2021-05-24 03:44:53', '60ab213568c75.png', 'Uploaded', NULL, 'zulvanfahmipenulis'),
(63, 'Viral Video Pemain AC Milan Latihan Tampil di Liga Champions', '<p>Video pemain AC Milan latihan tampil di Liga Champions viral di media sosial usai mengakhiri posisi di peringkat kedua di Liga Italia. Milan memastikan finis di belakang Inter Milan usai menang 2-0 atas Atalanta di Stadion Atleti Azzurri d&#39;Italia, Senin (24/5) dini hari WIB. Dua gol Milan diborong Franck Kessie melalui titik penalti.</p>\r\n\r\n<p>Tambahan tiga poin membuat Milan finis di posisi kedua dengan 79 poin. Skuad asuhan Stefano Pioli mengungguli Atalanta dan Juventus yang juga berhasil lolos ke Liga Champions.</p>\r\n\r\n<p>Dalam video yang diunggah lewat Instastory Diogo Dalot, para pemain Milan berjejer seperti persiapan sebelum pertandingan di ruang ganti Stadion Atleti Azzurri di&#39;Italia. Pemain seperti Hakan Calhanoglu, Alexis Saelemaekers, Rafael Leao, hingga Fikayo Tomori memasang wajah serius diiringi anthem Liga Champions.</p>\r\n\r\n<p>Beberapa pemain ini coba meniru gaya para pemain sebelum kick-off di Liga Champions. Sedangkan pemain muda, Jens Petter Hague coba menggoda beberapa rekan setimnya tersebut.</p>\r\n\r\n<p>Hasil positif di kandang Atalanta turut mengakhiri penantian Milan untuk tampil di Liga Champions. Rossoneri terakhir kali berkompetisi di ajang paling elite Eropa itu pada musim 2013/2014.</p>\r\n\r\n<p>Pada musim tersebut, Milan melangkah hingga babak 16 besar. Langkah tim kota mode dihentikan oleh tim asal Spanyol, Atletico Madrid yang mampu lolos hingga babak final sebelum dikalahkan rival sekota, Real Madrid.</p>\r\n', '2021-05-24 03:48:41', '60ab2219625af.png', 'Uploaded', NULL, 'zulvanfahmipenulis');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `namakategori` varchar(200) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `namakategori`, `deskripsi`) VALUES
(33, 'Sepak Bola', 'a'),
(34, 'Bulutangkis', 'a'),
(35, 'Olimpiade', 'a'),
(36, 'UFC', 'a'),
(37, 'MotoGP', 'Berita MotoGP');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `No` int(200) NOT NULL,
  `Nama` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Comment` text NOT NULL,
  `Post` int(11) NOT NULL,
  `DatePost` timestamp NOT NULL DEFAULT current_timestamp(),
  `penulis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `id` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `postingan`
--

CREATE TABLE `postingan` (
  `id` int(255) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `info_kategori` varchar(100) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL,
  `penulis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postingan`
--

INSERT INTO `postingan` (`id`, `judul`, `isi`, `info_kategori`, `gambar`, `waktu`, `views`, `penulis`) VALUES
(54, 'Dear Harry Kane, Siap Jadi Rebutan Liverpool, MU, dan Man City?', '<p><strong>London</strong>&nbsp;-&nbsp;Mantan manajer&nbsp;Tottenham Hotspur,&nbsp;Harry Redknapp, menilai&nbsp;Liverpool,&nbsp;Manchester United, dan&nbsp;Manchester City<a href=\"https://www.detik.com/tag/manchester-city\">&nbsp;</a>paling berpeluang mendapatkan&nbsp;Harry Kane.</p>\r\n\r\n<p>Harry Kane santer dilaporkan ingin meninggalkan Tottenham pada musim panas ini. Kapten timnas Inggris ini bahkan disebut sudah mengajukan permintaan kepada bos Tottenham,&nbsp;Daniel Levy, untuk dijual. Tottenham dikabarkan bakal mematok harga sebesar 120 juta euro.</p>\r\n\r\n<p>Ambisi besar Kane yang haus akan trofi disinyalir menjadi sebab dirinya ingin meninggalkan The Lilywhites. Tottenham sulit mewujudkan keinginan Kane tersebut. Apalagi, Spurs di musim ini sudah dipastikan gagal lolos ke Liga Champions</p>\r\n\r\n<p>Kapten timnas Inggris ini juga sempat mengungkapkan keinginannya mengikuti jejak Lionel Messi dan Cristiano Ronaldo menjadi pemain terbaik di dunia. Untuk berada di level tersebut, Kane jelas butuh raihan trofi.</p>\r\n\r\n<p><br />\r\nRedknapp menilai semua tim jelas bakal menginginkan Kane. Menilik dari kualitas yang dimiliki penyerang 27 tahun ini. Kane mampu mengemas 32 gol dan 16 assist di semua ajang musim ini.Spekulasi terkait masa depan Kane mulai mencuat dibicarakan seiring dengan kabar di atas. Mantan manajer Tottenham,&nbsp;Harry Redknapp&nbsp;turut mengomentari isu kepindahan Kane ini.</p>\r\n\r\n<p>Namun, Redknapp mengungkapkan bahwa tiga tim raksasa Liga Inggris,&nbsp;Liverpool,&nbsp;Manchester United, dan&nbsp;Manchester City&nbsp;paling berpeluang untuk merekrut Kane. Mengingat, Kane juga disebut tak ingin meninggalkan Liga Inggris.</p>\r\n\r\n<p>&quot;Dia akan menjadi rekrutan yang luar biasa bagi siapa pun akan mendatangkannya,&quot; Redknapp pada acara Big Night Out Redknapp di Sky.</p>\r\n\r\n<p>&quot;Jika dia pergi ke Man United, misalnya, Anda akan berharap mereka tahun depan memiliki peluang besar untuk menang. Dia akan membuat perbedaan besar. &quot;</p>\r\n\r\n<p>&quot;Dia bisa mengubah tim. Liverpool, Man United, Man City. Kemana dia akan pergi? Salah satu di antara ketiganya,&quot; jelasnya.</p>\r\n', '33', '60a7b2f44b277.jpeg', '2021-05-22 06:20:47', 3, 'jono'),
(55, 'Conor McGregor Jadi Atlet Terkaya di Dunia, Duitnya Dari Mana?', '<p><strong>Jakarta</strong>&nbsp;-&nbsp;<em>Forbes</em>&nbsp;merilis atlet terkaya di dunia. Petarung UFC,&nbsp;Conor McGregor&nbsp;ada di urutan pertama. Apa saja sih bisnisnya?</p>\r\n\r\n<p><em>Forbes</em>&nbsp;baru-baru ini melansir daftar 10 atlet terkaya di dunia pada tahun 2020. Ada kejutan, Conor McGregor berada di peringkat teratas.</p>\r\n\r\n<p>Petarung&nbsp;UFC&nbsp;itu bahkan berada di atas bintang sepakbola dunia yakni Cristiano Ronaldo, Lionel Messi, dan Neymar. Tercatat McGregor mengumpulkan pendapatan US$ 180 juta atau setara Rp 2,5 triliun (kurs Rp 14.100) sepanjang tahun lalu.</p>\r\n\r\n<p><br />\r\nAwal tahun lalu, Conor McGregor bertarung sekali menghadapi Donald Cerrone di kelas Walter. McGregor cuma butuh 40 detik buat memenangi laga, lewat serangan jurus tendangan dengkul dan serangan bahu.Dilansir&nbsp;<strong>detikSport</strong>&nbsp;dari berbagai sumber,&nbsp;Conor McGregor&nbsp;merupakan petarung dengan bayaran PPV (pay per view) tertinggi. The Notorious, selalu mengantongi uang banyak setelah bertarung.</p>\r\n\r\n<p>Dari pertarungan tersebut, McGregor membawa pulang duit sebanyak 33 juta USD atau setara Rp 474 miliar.</p>\r\n\r\n<p><br />\r\nMcGregor punya modal besar buat membangun Proper No. 12. McGregor mengantongi banyak duit dari pertarungan tinju menghadapi Floyd Mayweather dan disinyalir mengantongi 100 juta USD.<br />\r\nBisnis tersebut laris manis. Sepanjang tahun 2020, McGregor mendapat 150 juta USD atau setara Rp 2,1 triliun dari wiski Irish-nya itu.Ladang utama pendapatan Conor McGregor adalah bisnis perusahaan minuman wiski bernama Proper No. 12. McGregor membangun bisnis itu di tahun 2017.</p>\r\n\r\n<p><br />\r\nConor McGregor pun bakal kembali bertarung di&nbsp;UFC&nbsp;pada Juli nanti, dalam trilogi duel kontra Dustin Poirier. Tentu, bayaran besar menantinya.Conor McGregor&nbsp;juga jadi brand merk-merk ternama. Setiap tahun, McGregor mendapat 5 juta USD atau setara Rp 71 miliar. Selain itu, McGregor jadi brand-nya Burger King, Beats by Dre</p>\r\n', '36', '60a7b3e24c3ed.jpeg', '2021-05-24 02:25:25', 0, 'jono'),
(57, 'Putri KW, Pemutus Paceklik Gelar Tunggal Putri Indonesia', '<p>Putri Kusuma Wardani berhasil memutus paceklik gelar tunggal putri Indonesia usai juara Spain Master 2021.<br />\r\nPutri KW keluar sebagai yang terbaik usai mengalahkan wakil Denmark, Line Christophersen di partai puncak. Pebulutangkis berusia 18 itu menang meyakinkan lewat permainan dua gim 21-15, 21-10 di Palacio de Deportes Carolina Marin, Huelva, Minggu (23/5).</p>\r\n\r\n<p>Hasil itu bukan hanya jadi debut manis bagi Putri KW di turnamen Super 300. Ia juga membuka kembali keran prestasi di sektor tunggal putri setelah Fitriani.</p>\r\n\r\n<p>Selain Fitriani dan Putri KW, Adriyanti Firdasari dan Lindaweni Fanetri juga pernah mengukir prestasi. Firdasari juara Indonesia Masters 2014, sementara Lindaweni berjaya di Syed Modi 2012.</p>\r\n\r\n<p>Putri KW juga jadi salah satu dari empat wakil Indonesia yang jadi juara di Spain Master 2021. Tiga wakil lainnya yakni ganda putri Yulfira Barkah/Febby Valencia Dwijayanti Gani, ganda putra Pramudya Kusumawardana/Yeremia Erich Yoche Yacob Rambitan, dan ganda campuran Rinov Rivaldy/Pitha Haningtyas Mentari.</p>\r\n\r\n<p>Sementara itu, Chico Aura Dwi Wardoyo jadi satu-satunya wakil Indonesia yang kalah di final. Chicho menyerah dari pebulutangkis Prancis, Toma Junior Popov lewat permainan dua gim 15-21, 17-21.</p>\r\n', '34', '60ab0c2b33258.jpeg', '2021-05-24 02:24:43', 0, 'jono'),
(58, 'Dorongan untuk Membatalkan Olimpiade Tokyo Makin Menguat', '<p>Saat Obor Olimpiade melewati Hiroshima pekan ini, panitia berusaha agar pawai menjauh dari jalanan. Upacara menyalakan obor digelar tanpa penonton. Kunjungan Ketua Komite Olimpiade Internasional (IOC) Thomas Bach ke Jepang dibatalkan. Hiroshima bersama tuan rumah Tokyo adalah salah satu dari tujuh prefektur yang berada di masa darurat Covid-19.</p>\r\n\r\n<p>Olimpiade Tokyo menunjukkan langkah besar yang perlu dilakukan untuk menggelar ajang olahraga terbesar di dunia selama pandemi. Sejauh ini Jepang berhasil menghindari ledakan wabah terutama karena berhasil menjaga ketat perbatasan pada musim gugur tahun lalu.</p>\r\n\r\n<p>Namun dua pertiga kasus kematian dilaporkan pada tahun ini. Gelombang wabah terbaru yang didorong varian Covid-19 yang lebih menular telah membebani sistem kesehatan regional. Sementara program vaksinasi berjalan lambat, di sisi lain pembukaan Olimpiade tinggal dua bulan lagi.</p>\r\n\r\n<p>Sekitar 15 ribu atlet dan mungkin 90 ribu kru dari 200 negara akan berkumpul di Jepang. Banyak warga Jepang yang khawatir Olimpiade memicu ledakan penularan Covid-19. Sekitar 60 persen responden menilai agar Olimpiade dibatalkan.</p>\r\n\r\n<p>Pada Ahad (23/5) Economist melaporkan panitia yakin Olimpiade dapat digelar dengan aman. Mereka mencontohkan ajang olahraga internasional yang digelar selama pandemi lainnya seperti Master 2021, kompetisi golf di Amerika Serikat (AS).</p>\r\n\r\n<p>Jepang ingin membuat wilayah terisolasi di sekitar desa-desa Olimpiade dan mewajibkan vaksin bagi para atlet. Bach mengeklaim ketika Olimpiade dibuka sudah sekitar 80 persen orang yang berada di desa Olimpiade sudah divaksin. Jepang sudah memutuskan untuk melarang penontong asing sementara penonton dalam negeri akan diputuskan bulan Juni.</p>\r\n\r\n<p>Banyak dokter dan pakar kesehatan yang tidak yakin Olimpiade dapat digelar dengan aman. Jepang dapat menggunakan sumber daya untuk melakukan pemeriksaan, perawatan, atau memvaksin masyarakatnya daripada harus menggelar Olimpiade.</p>\r\n\r\n<p>Pergerakan masyarakat selama liburan bulan Mei meningkatkan angka kasus positif di Jepang. Olimpiade rencananya digelar di sembilan prefektur termasuk Tokyo dan melibatkan kamp-kamp pelatihan dan sukarelawan dari seluruh negeri sehingga pergerakan hampir tidak mungkin dapat dihindari.</p>\r\n\r\n<p>Kepala rumah sakit prefektur Mei dan salah satu editor British Medical Journal Taniguchi Kiyosu meminta Olimpiade dibatalkan. Puluhan kota membatalkan rencana mereka untuk membuka pintu bagi warga asing yang ingin berlatih.</p>\r\n\r\n<p>Varian baru Covid-19 yang lebih menular juga memperumit masalah. Sementara varian B.1.1.7 sudah menyebar ke mana-mana. Taniguchi mengatakan konvergensi orang-orang dari seluruh di dunia di Jepang dapat membentuk virus bermutasi dan masuk.</p>\r\n\r\n<p>&quot;Jepang akan menjadi kendaraan untuk bercampur,&quot; kata Taniguchi seperti dikutip Economist.</p>\r\n\r\n<p>Virolog yang menjadi salah satu pakar yang bertugas memberi saran pada pemerintah, Oshitani Hitoshi, mengatakan peserta Olimpiade dapat membawa virus ke negara asal mereka. Banyak negara di seluruh dunia yang sistem kesehatannya tidak sebaik Jepang.</p>\r\n\r\n<p>&quot;Satu saja kasus impor dapat memicu wabah yang lebih besar,&quot; kata Oshitani.</p>\r\n\r\n<p>Rakyat Jepang mungkin merasa lebih aman jika ada proteksi dari virus yang mungkin berasal dari para atlet. Berdasarkan pelacak Covid-19 the Economist hanya 4,5 persen orang dewasa Jepang yang menerima setidaknya dosis pertama virus corona. Negeri Sakura masih di belakang Myanmar.</p>\r\n\r\n<p>Perdana Menteri Yoshihide Suga ingin program vaksinasi untuk orang lanjut usia sudah selesai pada akhir Juni. Namun hanya dua pertiga warga Tokyo yang dapat melakukan vaksinasi. Masalahnya bukan pada pasokan vaksin sebab surat kabar Nikkie memprediksi ada sekitar 10 juta dosis vaksin yang tidak terpakai di dalam freezer.</p>\r\n\r\n<p>Pada titik ini masalahnya juga bukan pada permintaan. Walaupun masyarakat Jepang cukup ragu pada vaksin umum tapi hal itu tidak berlaku pada vaksin Covid-19. Anggota gugus tugas Covid-19 pemerintah Shimoaraiso Makoto mengatakan pusat vaksinasi massal yang baru dibuka di Osaka pekan ini membuka 25 ribu vaksinasi dan sudah penuh dalam 25 menit.</p>\r\n\r\n<p>Masalahnya pada kekusutan logistik dan birokrasi yang memperlambat proses vaksinasi. Situs pendaftaran dan saluran telepon vaksin mengalami masalah teknis.</p>\r\n\r\n<p>Kementerian Kesehatan tertahan peraturan yang mengharuskan uji coba pada setiap vaksin asing. Sejauh ini Jepang hanya menyetujui vaksin dari Pfizer-BioNTech. Negeri Sakura juga kekurangan orang untuk mengatur vaksin karena undang-undang Jepang mengharuskan hanya dokter dan perawat yang boleh memberikan vaksin.</p>\r\n\r\n<p>Pengecualian sudah diberikan pada dokter gigi sementara pemerintah mencoba untuk memberikan wewenang pada apoteker untuk menyuntikkan vaksin. Oshitani mengatakan kesalahan yang dilakukan praktisi yang tak berpengalaman dapat berakibat fatal.</p>\r\n\r\n<p>&quot;Kami di Jepang sangat, sangat sensitif terhadap kejadian buruk. Satu kejadian dapat menahan seluruh proses vaksinasi,&quot; katanya.</p>\r\n\r\n<p>Akan tetapi tampaknya dalam beberapa pekan Jepang akan mempercepat program vaksinasi mereka. Sebab pemerintah diperkirakan akan menyetujui penggunaan vaksin Moderna dan AstraZeneca. Kementerian Pertahanan juga akan membangun lebih banyak fasilitas vaksinasi.</p>\r\n', '35', '60ab0c5b449d2.jpeg', '2021-05-24 02:25:27', 0, 'jono'),
(59, 'Cristiano Ronaldo Top Skor Liga Italia', '<p>Jakarta,&nbsp;-&nbsp;Penyerang Juventus Cristiano Ronaldo menyelesaikan musim 2020/2021 sebagai pencetak gol terbanyak Liga Italia.<br />\r\nPemain berusia 36 tahun itu mencetak 29 gol saat Bianconeri menyelesaikan musim ini di posisi keempat.</p>\r\n\r\n<p>Ronaldo telah memenangkan perburuan gelar top Skor untuk pertama kalinya pada musim ketiganya di Italia. Secara total, Ronaldo telah mencetak 81 gol di Liga Italia.</p>\r\n\r\n<p>Ronaldo menjadi pencetak gol terbanyak Liga Inggris pada 2007/2008 saat di Manchester United dengan 31 gol yang membantunya memenangkan Ballon d&#39;Or pertamanya tahun itu.</p>\r\n\r\n<p>Secara total, Ronaldo telah mencetak 118 gol dalam 292 penampilan untuk United sebelum pergi untuk bergabung dengan Real Madrid pada 2009.</p>\r\n\r\n<p>Banner Live Streaming MotoGP 2021<br />\r\nSelama di Inggris, ia dua kali memenangkan penghargaan: Pemain Terbaik dan Football Writers Awards pada 2006-07 dan 2007-08.</p>\r\n\r\n<p>Ronaldo juga telah memenangkan trofi Pichichi untuk pencetak gol terbanyak La Liga dalam tiga kesempatan: 2010/2011 (40 gol), 2013/2014 (31 gol), dan 2015/2016 (48 gol).</p>\r\n', '33', '60ab0d1fb738d.jpeg', '2021-05-24 02:24:39', 2, 'jono'),
(61, 'Spain Masters 2021: Menangi All Indonesia Final, Pramudya/Yeremia Juara', '<p>Huelva - Pramudya Kusumawardana/Yeremia Erich Rambitan juara ganda putra Spain Masters 2021. Pramudya/Yeremia mengalahkan Sabar Gautama/Moh. Reza Pahlevi.<br />\r\nPada laga final yang dihelat di Palacio de Deportes Carolina Marin, Huelva, Spanyol, Minggu (23/5/2021) sore WIB, Pramudya/Yeremia yang diunggulkan di tempat kelima memang dijagokan menang atas Sabar/Reza.</p>\r\n\r\n<p>Pramudya/Yeremia tancap gas sejak gim pertama dimulai dan sudah unggul 8-5 sebelum menutup interval dengan 11-8. Pramudya/Yeremia tak tertahankan sejak interval dan menang mudah 21-15.</p>\r\n\r\n<p>Pada gim kedua, Sabar/Reza balik menekan Pramudya/Yeremia dan membuat kompatriotnya kesulitan. Sabar/Reza unggul jauh 8-3 sebelum memimpin 11-5 di interval.</p>\r\n\r\n<p>Baca juga: Spain Masters 2021: Indonesia Tambah Gelar Juara dari Tunggal Putri<br />\r\nSetelah itu duel di gim kedua terbilang sengit karena Pramudya/Yeremia mampu mengimbangi Sabar/Reza dan bahkan sempat memangkas jadi 12-15. Skor sempat tipis 17-18 untuk Sabar/Reza, sebelum akhirnya menang 21-18.</p>\r\n\r\n<p>Pada gim ketiga, Pramudya/Yeremia sempat unggul jauh 6-1 sebelum didekati 5-6, tapi akhirnya menutup interval gim ini dengan 11-6. Pramudya/Yeremia tak mau dibalap lagi dan menaikkan intensitas permainannya.</p>\r\n\r\n<p>Pramudya/Yeremia unggul 18-12 sebelum menutup final ganda putra dengan kemenangan 21-14. Indonesia sudah mendapat tiga gelar di Spain Masters setelah di nomor tunggal putri dan ganda putri.</p>\r\n\r\n<p>Indonesia berpeluang meraih satu gelar tersisa dari nomor ganda campuran saat Rinov Rivaldy/Pitha Haningtya Mentari menghadapi unggul kedua Niclas Nohr/Amalie Magelund dari Denmark.</p>\r\n', '34', '60ab0ddd85d78.jpeg', '2021-05-24 02:24:36', 1, 'jono'),
(62, 'Andi Gilang Dukung MotoGP Mandalika, Takut Sirkuit Tak Muat', '<p>Sirkuit Mandalika dijadwalkan akan menggelar balapan MotoGP Indonesia pada Maret 2022.<br />\r\nNamun, Andi Gilang khawatir penonton di MotoGP Indonesia pada Maret mendatang membeludak hingga Sirkuit Mandalika tidak cukup menampung. Andi Gilang yakin balapan pertama MotoGP Indonesia di Mandalika akan mendapat sambutan luar biasa.</p>\r\n\r\n<p>MotoGP Indonesia di Sirkuit Mandalika akan menjalani debut Grand Prix pada musim 2022. CEO Dorna Sport, Carmelo Ezpeleta, MotoGP Indonesia di Mandalika salah satu seri terpenting.</p>\r\n\r\n<p>Terkait peluang tampil di Sirkuit Mandalika musim depan, Andi Gilang mengatakan semua tergantung prestasinya di Moto3 musim ini. Pembalap 23 tahun itu yakin prestasi di Moto3 akan membuatnya bisa melakoni balapan di GP Indonesia musim depan.</p>\r\n\r\n<p>&quot;Kalau buat Gilang soal sendiri seberapa yakin bisa tampil di GP Indonesia, semua otomatis balik lagi ke prestasi. Gilang juga memikirkan ke sana, tapi yang jelas fokus buat yang sekarang. Kalau Gilang jalani yang sekarang baik, pasti bisa tampil buat tahun depan di Indonesia,&quot; ucap Andi Gilang.</p>\r\n\r\n<p>Setelah tampil di Moto2 musim lalu dan turun ke Moto3 musim ini, Andi Gilang sukses merebut poin untuk kali pertama di ajang Grand Prix setelah finis di posisi 15 pada Moto3 Prancis, akhir pekan lalu. Pembalap Honda Team Asia untuk menjadi rider pertama Indonesia yang merebut poin sejak Doni Tata pada 2013.</p>\r\n\r\n<p>&quot;Kalau Moto3 cc-nya kecil. Jadi, hampir semua rider bisa fight bareng sampai lap terakhir. Beda dengan Moto2, karena kalau di Moto3 kita juga butuh slipstream. Kalau Moto3 kita bisa fight sampai lap terakhir, Moto2 karena cc-nya besar kita harus manage kondisi ban biar tidak cepat habis,&quot; ucap Andi Gilang terkait balapan di Moto3.</p>\r\n\r\n<p>Live streaming MotoGP Italia di Mugello, 30 Mei, bisa disaksikan melalui CNNIndonesia.com. Sedangkan siaran langsung balapan akan disiarkan Trans7.</p>\r\n', '37', '60ab213568c75.png', '2021-05-24 03:52:41', 0, 'zulvanfahmipenulis'),
(63, 'Viral Video Pemain AC Milan Latihan Tampil di Liga Champions', '<p>Video pemain AC Milan latihan tampil di Liga Champions viral di media sosial usai mengakhiri posisi di peringkat kedua di Liga Italia. Milan memastikan finis di belakang Inter Milan usai menang 2-0 atas Atalanta di Stadion Atleti Azzurri d&#39;Italia, Senin (24/5) dini hari WIB. Dua gol Milan diborong Franck Kessie melalui titik penalti.</p>\r\n\r\n<p>Tambahan tiga poin membuat Milan finis di posisi kedua dengan 79 poin. Skuad asuhan Stefano Pioli mengungguli Atalanta dan Juventus yang juga berhasil lolos ke Liga Champions.</p>\r\n\r\n<p>Dalam video yang diunggah lewat Instastory Diogo Dalot, para pemain Milan berjejer seperti persiapan sebelum pertandingan di ruang ganti Stadion Atleti Azzurri di&#39;Italia. Pemain seperti Hakan Calhanoglu, Alexis Saelemaekers, Rafael Leao, hingga Fikayo Tomori memasang wajah serius diiringi anthem Liga Champions.</p>\r\n\r\n<p>Beberapa pemain ini coba meniru gaya para pemain sebelum kick-off di Liga Champions. Sedangkan pemain muda, Jens Petter Hague coba menggoda beberapa rekan setimnya tersebut.</p>\r\n\r\n<p>Hasil positif di kandang Atalanta turut mengakhiri penantian Milan untuk tampil di Liga Champions. Rossoneri terakhir kali berkompetisi di ajang paling elite Eropa itu pada musim 2013/2014.</p>\r\n\r\n<p>Pada musim tersebut, Milan melangkah hingga babak 16 besar. Langkah tim kota mode dihentikan oleh tim asal Spanyol, Atletico Madrid yang mampu lolos hingga babak final sebelum dikalahkan rival sekota, Real Madrid.</p>\r\n', '33', '60ab2219625af.png', '2021-05-24 03:52:45', 0, 'zulvanfahmipenulis');

-- --------------------------------------------------------

--
-- Table structure for table `tempberita`
--

CREATE TABLE `tempberita` (
  `id` int(255) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `gambar` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tempkategori`
--

CREATE TABLE `tempkategori` (
  `id` int(11) NOT NULL,
  `namakategori` varchar(100) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `tanggalpost` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempkategori`
--

INSERT INTO `tempkategori` (`id`, `namakategori`, `deskripsi`, `tanggalpost`) VALUES
(5, '', '', '0000-00-00 00:00:00'),
(6, 'Dunia Perkuliahan', 'K', '0000-00-00 00:00:00'),
(7, 'Beasiswa', 'Membahas tentang info info beasiswa apa aja yang ada, beasiswa apa saja yang masih buka slot pendaftaran dan tips lulus seleksi beasiswa', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `temppost`
--

CREATE TABLE `temppost` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `info_kategori` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `waktu` varchar(100) NOT NULL,
  `views` int(11) DEFAULT NULL,
  `penulis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temppost`
--

INSERT INTO `temppost` (`id`, `judul`, `isi`, `info_kategori`, `gambar`, `waktu`, `views`, `penulis`) VALUES
(53, 'Lionel Messi Tutup Musim Lebih Cepat, Absen Lawan Eibar', '<p><strong>Barcelona</strong>&nbsp;-&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-pemain/fc-barcelona/l-messi\">Lionel Messi</a>&nbsp;dipastikan menutup musim ini lebih cepat. Striker Argentina itu absen saat&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-tim/liga-spanyol/fc-barcelona\">Barcelona</a>&nbsp;melawan&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-tim/liga-spanyol/sd-eibar\">Eibar</a>&nbsp;di pekan terakhir&nbsp;<a href=\"https://sport.detik.com/sepakbola/liga-spanyol\">Liga Spanyol</a>.</p>\r\n\r\n<p>Messi dipastikan absen saat Barcelona melawan Eibar di Stadion Municipal de Ipurua, Sabtu (22/5/2021) malam WIB. Itu merupakan laga ke-38 Blaugrana di&nbsp;<a href=\"https://www.detik.com/tag/laliga\">LaLiga</a>, atau yang terakhir di musim 2020/2021.</p>\r\n\r\n<p>Hal itu diumumkan Barcelona di media sosialnya. Striker andalannya absen di latihan dan pertandingan melawan Eibar dengan izin dari pelatih.</p>\r\n\r\n<p>&quot;Leo Messi tidak latihan hari ini dengan izin pelatih dan tidak akan bermain melawan Eibar,&quot; cuit akun Twitter Barcelona.</p>\r\n\r\n<p>Absennya&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-pemain/fc-barcelona/l-messi\">Lionel Messi</a>&nbsp;takkan berpengaruh banyak pada nasib di pekan terakhir&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-tim/liga-spanyol/fc-barcelona\">Barcelona</a>. Anak asuh&nbsp;<a href=\"https://www.detik.com/tag/ronald-koeman\">Ronald Koeman</a>&nbsp;sendiri sudah dipastikan gagal merebut gelar juara Liga Spanyol.<br />\r\nMusim ini, Messi tampil 47 kali untuk Barcelona. Sebanyak 38 gol ia cetak, dengan 30 gol di antaranya dilesakkan di&nbsp;<a href=\"https://sport.detik.com/sepakbola/liga-spanyol\">Liga Spanyol</a>.Kekalahan 1-2 dari Celta Vigo di pekan ke-37, membuat Barcelona dipastikan gagal mengejar&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-tim/liga-spanyol/club-atletico-de-madrid\">Atletico Madrid</a>&nbsp;dan&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-tim/liga-spanyol/real-madrid-cf\">Real Madrid</a>. Los Cules tertahan di peringkat tiga&nbsp;<a href=\"https://sport.detik.com/sepakbola/klasemen/liga-spanyol\">klasemen Liga Spanyol</a>&nbsp;dengan 76 poin, terpaut empat angka dari kedua rivalnya dengan satu laga tersisa.</p>\r\n\r\n<p>Dengan penampilannya, Messi memecahkan rekor penampilan terbanyak untuk Barcelona, dengan sudah bermain 778 kali, melewati catatan Xavi Hernandez. Penyerang Argentina itu juga mempersembahkan trofi&nbsp;<a href=\"https://www.detik.com/tag/copa-del-rey\">Copa del Rey&nbsp;</a>buat timnya, dengan mengalahkan&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-tim/liga-spanyol/athletic-club-bilbao\">Athletic Bilbao</a>&nbsp;4-0.</p>\r\n\r\n<p><br />\r\nYang menjadi sorotan,&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-tim/liga-spanyol/fc-barcelona\">Barcelona</a>&nbsp;kemungkinan melewatkan laga terakhirnya bersama&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-pemain/fc-barcelona/l-messi\">Lionel Messi</a>. Sebab, kontrak La Pulga akan habis Juni mendatang, dan sejauh ini belum diperpanjang. Jika jadi hengkang, maka&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-pemain/fc-barcelona/l-messi\">Lionel Messi</a>&nbsp;melewatkan laga terakhirnya bersama&nbsp;<a href=\"https://sport.detik.com/sepakbola/profil-tim/liga-spanyol/fc-barcelona\">Barcelona</a>&nbsp;di kompetisi resmi.Selanjutnya, Messi sendiri akan kembali ke Argentina. Ia akan bersiap berlaga di&nbsp;<a href=\"https://www.detik.com/tag/copa-america\">Copa America</a>, yang berlangsung pada 11 Juni-11 Juli mendatang.</p>\r\n', '33', '60a7b05a5b09d.jpeg', '2021-05-22 12:08:15', 3, 'jono');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Administrator','Editor','Penulis') CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `tanggal`, `nohp`, `username`, `email`, `password`, `level`) VALUES
(1, '', '0000-00-00', '0', 'admin', '', '$2y$10$cXduypOgISR9hCEGJHcP7.VPrrPBuqlFQRhEjoaK0/BRIg1gnw.w6', 'Administrator'),
(4, '', '0000-00-00', '0', 'editor', '', '$2y$10$hgGpjRnoak4240.TzwPlxugbNvR/RJevOlLzaI1m6n.yr0ApjzU2u', 'Editor'),
(5, '', '0000-00-00', '0', 'penulis', '', '$2y$10$WF52SEvmvwSLyS7RmSRsouZlFIVrh6VYa5aYgU0mV3DSIbcAqTU4q', 'Penulis'),
(6, 'Arjuna Wirayudha', '2000-01-01', '085156172070', 'jono', 'juna@gmail.com', '$2y$10$4ve0NRvPz1.Tmc8mgNr8aeNngwkeGAXNqvvVMhWLqoj47iwhbZN6K', 'Penulis'),
(7, 're-zaldi', '0000-00-00', '0', 'zaldi', 'akurizaldirv@gmail.com', '$2y$10$wMRXxtZ5l2O4ejyubB1DC.pKAsbM/vrA4ufXADp4RFsl6h.e8vTku', 'Penulis'),
(8, 'DIcki', '0000-00-00', '', 'dicki', 'dicki@gamil.com', '$2y$10$sY0vN/gmeL4ed5qIJrAzhOobNxYQxhGRl.Nz/DGYIA6.eLZwI8zwS', 'Penulis'),
(9, 'Muhamad Zulvan Fahmi', '0000-00-00', '081', 'zulvanfahmipenulis', 'zulvanfahmi1612@gmail.com', '$2y$10$S5tu7AxdWs6ReeIPpRaD/u.z1TPVxEd0h5VCqIQtFeM4GnNK098Tm', 'Penulis'),
(10, 'Muhamad Zulvan Fahmi', '0000-00-00', '081', 'zulvanfahmiadmin', 'zulvanfahmi1612@gmail.com', '$2y$10$S5tu7AxdWs6ReeIPpRaD/u.z1TPVxEd0h5VCqIQtFeM4GnNK098Tm', 'Administrator'),
(11, 'Muhamad Zulvan Fahmi2', '0000-00-00', '081', 'zulvanfahmiedit', 'zulvanfahmi1612@gmail.com', '$2y$10$S5tu7AxdWs6ReeIPpRaD/u.z1TPVxEd0h5VCqIQtFeM4GnNK098Tm', 'Editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beritaadmin`
--
ALTER TABLE `beritaadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beritaeditor`
--
ALTER TABLE `beritaeditor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beritapenulis`
--
ALTER TABLE `beritapenulis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempberita`
--
ALTER TABLE `tempberita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempkategori`
--
ALTER TABLE `tempkategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temppost`
--
ALTER TABLE `temppost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beritaadmin`
--
ALTER TABLE `beritaadmin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `beritaeditor`
--
ALTER TABLE `beritaeditor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `beritapenulis`
--
ALTER TABLE `beritapenulis`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `No` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `postingan`
--
ALTER TABLE `postingan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tempberita`
--
ALTER TABLE `tempberita`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tempkategori`
--
ALTER TABLE `tempkategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `temppost`
--
ALTER TABLE `temppost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
