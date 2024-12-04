-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2024 at 04:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artikel`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikels`
--

CREATE TABLE `artikels` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikels`
--

INSERT INTO `artikels` (`id`, `title`, `description`, `created_at`) VALUES
(7, 'mike tyson', 'Michael Gerard Tyson lebih dikenal dengan nama Mike Tyson (lahir 30 Juni 1966, New York City, Amerika Serikat) adalah petinju profesional dan mantan juara kelas berat. Kariernya yang sangat menjanjikan terhambat oleh berbagai kasus kriminal. Julukan Mike Tyson secara internasional adalah \"Iron Mike\", merujuk pada postur tubuhnya yang kuat bagaikan besi. Beberapa media massa yang lain lebih suka menyebutnya sebagai \"The Baddest Man on Earth\", yang merujuk pada perangainya yang buruk, baik di dalam maupun di luar ring tinju. Sedangkan pers Indonesia lebih senang menyebut Tyson sebagai \"Si Leher Beton\" yang merujuk pada lingkaran leher Tyson pada masa jayanya yang ekstra besar dari ukuran normal, dan tampak begitu kokoh..\r\n\r\nMasa Muda\r\nDilahirkan di kawasan pabrik Bronx, New York City, Tyson adalah salah seorang petinju paling ditakuti karena kebrutalannya. Ia keluar masuk penjara anak-anak dan dikeluarkan dari sekolah. Ia kemudian ditarik keluar dari sekolah anak nakal oleh pelatih tinju terkenal, Cus D\'Amato, karena ia melihat potensi dan bakat yang ada pada Michael Gerard Tyson.\r\n\r\nKarier dan perjalanan hidup\r\nDalam sekejap menjadi bintang tenar\r\nKarier Mike Tyson berawal dari tinju amatir, sebelum terjun ke tinju profesional, setelah kalah angka dalam kualifikasi tinju amatir menuju Olimpiade dari Henry Tillman.\r\n\r\nMike Tyson bertanding secara profesional pertama kali pada tanggal 6 Maret 1985 di Albany, New York. Ia menang di ronde pertama. Ia kemudian bertinju 15 kali lagi di 1985, memenangkan semua pertandingan dengan KO, dan hampir semuanya di ronde pertama. Ia bertanding 12 kali di 1986, melejit dalam peringkat para petinju dan menarik perhatian media massa. Pada tanggal 22 November 1986 Tyson mendapat kesempatan pertama untuk meraih gelar, melawan Trevor Berbick untuk kelas berat versi WBC. Dua ronde kemudian, pada usia 20, Tyson menjadi juara dunia kelas berat termuda di dunia.\r\n\r\nPada tahun 1987, Tyson mempertahankan gelar melawan James \'Bonecrusher\' Smith pada tanggal 7 Maret di Las Vegas, Nevada. Ia menang angka dan menambahkan gelarnya WBA milik Smith menjadi koleksinya. \'Tyson mania\' meledak di media massa. Ia mengalahkan Pinklon Thomas di bulan Mei dengan KO pada ronde keenam. Pada tanggal 1 Agustus ia merebut gelar IBF dari Tony Tucker dengan menang angka untuk menjadi \"juara tinju dunia kelas berat sejati\" (Catatan: \"juara sejati\" merujuk pada tiga gelar juara di tiga komisi tinju dunia: WBA, WBC dan IBF). Setelah itu ia hanya bertinju sekali lagi di 1987 melawan juara Olimpiade 1984 Tyrell Biggs di bulan Oktober, menang KO di ronde ketujuh.\r\n\r\nTyson bertanding tiga kali di 1988, melawan petinju veteran dan mantan juara kelas berat Larry Holmes pada 22 Januari dengan kemenangan TKO ronde keempat; melawan Tony Tubbs di Tokyo di bulan Maret, KO ronde kedua; dan melawan Michael Spinks yang diramalkan menjadi lawan berat Tyson, pada 27 Juni, justru tersungkur KO hanya dalam 90 detik pada ronde pertama.\r\n\r\nKontroversi\r\nSelain prestasinya di dunia tinju, masalah-masalah pribadi Tyson juga diekspos oleh pers. Pernikahannya dengan Robin Givens menuju pada perceraian, dalam sebuah rumah tangga yang kurang harmonis dan dibumbui berbagai kasus kekerasan dalam rumahtangga. Kelak Tyson menikah lagi dengan Dr. Monica Turner yang memberinya beberapa anak, namun keluarga inipun berantakan.\r\n\r\nBanyak pula berita mengenai dugaan bahwa kontraknya dicurangi oleh Don King dan Bill Cayton, yang akhirnya membawa kepada perpecahan di antara mereka.\r\n\r\nSelama 1989, Tyson hanya bertanding dua kali: melawan Frank Bruno di mana ia menang di ronde kelima dan melawan Carl Williams di bulan Juli dengan KO di ronde pertama.\r\n\r\nPada 1990 Tyson kehilangan orientasi, kehidupan pribadinya kacau-balau, dan ia tidak berlatih dengan baik. Dalam sebuah pertarungan pada 11 Februari dengan petinju yang tidak terkenal James \'Buster\' Douglas ia kalah dengan KO pada ronde ke-10, meskipun pada ronde ke-8 managernya memprotes wasit karena \'hitungan yang terlalu lambat\'. Akibatnya Tyson kehilangan sabuk juaranya yang direbut Douglas. Dua pertarungan berikutnya dalam 1990 membangkitkan rasa percaya dirinya ketika ia menang dengan KO dalam ronde pertama.\r\n\r\nPada 1991 Tyson bertarung dengan Donovan \"Razor\" Ruddock dua kali, sekali pada bulan Maret dan kemudian Juni. Kedua pertarungan ini diingat karena ucapan \"penjara\" Tyson kepada lawannya. Ia berkata kepada Ruddock, \"Setiap orang tahu kamu bencong, dan kamu naksir saya. Saya akan menjadikan kamu pacar saya. Saya tidak tahan untuk memukuli orang cantik seperti kamu\". Pertarungan pertama yang dimenangkan Tyson dalam ronde ke-7 mengandung kontroversi tetapi pada pertarungan kedua, yang dilakkan Tyson sambil menunggu pertarungan melawan juara baru Evander Holyfield, Tyson menang dengan angka.\r\n\r\nPerkosaan, penjara, dan sesudahnya\r\nTyson diadili di Indiana dengan tuduhan perkosaan atas peserta pertandingan Miss Black America tahun 1991 yang bernama Desiree Washington pada 27 Januari 1992. Tyson dinyatakan bersalah melakukan pemerkosaan pada 10 Februari dan dipenjara selama 3 tahun. (Menurut hukum Indiana, seorang tertuduh yang dinyatakan bersalah melakukan kejahatan harus langsung menjalani masa hukuman di penjara segera setelah hukuman dijatuhkan). Akibatnya, Tyson tidak bertarung lagi hingga 1995.\r\n\r\nSebagai pertarungan pembukaan setelah ia keluar dari penjara, ia melawan Peter McNeeley pada Agustus dan mengalahkan Buster Mathis Jr. dalam tiga ronde pada Desember 1995. Pada Maret 1996 Tyson memenangkan sebuah sabuk kejuaraan ketika merebut gelar WBC dari Frank Bruno yang berat langkah dalam tiga ronde. Pada September 1996 Tyson memenangkan kembali gelar WBA dalam 93 detik dari Bruce Seldon, setelah membayar Lennox Lewis $4 juta dolar AS untuk \'menyingkir\'. Tyson dikritik banyak orang karena melawan petinju-petinju yang sangat tidak bermutu. Misalnya, dikatakan bahwa \"lawan-lawan\" McNeeleys umumnya kalah dalam 3/4 pertarungan mereka. Mathis adalah lawan yang tidak bermutu, petinju yang pukulannya tidak keras dan kemasyhuran satu-satunya hanyalah bahwa ayahnya pun pernah menjadi petinju yang bertarung melawan Joe Frazier dan Muhammad Ali. Seldon dicemooohkan karena kekalahannya pada ronde pertama melawan Tyson karena ia dipukul oleh sebuah pukulan yang sangat ringan. Banyak yang menuduhnya cuma ketakutan sehingga ia menyerah begitu saja.\r\n\r\nMasuk Islam\r\nSecara resmi, pada 1995, selepas dari penjara di Indiana, Mike Tyson mengumumkan telah memeluk agama Islam yang telah dipelajarinya selama di dalam penjara. Nama Muslim Tyson adalah Malik Abdul Aziz.\r\n\r\nPertarungan dengan Holyfield\r\nPada 9 November, 1996 ia menghadapi tantangan yang lebih berat dari Evander Holyfield, dalam pertarungan yang lebih dari 11 ronde. Holyfield menang dengan TKO dan menjadi juara dunia tiga kali.\r\n\r\nTyson tidak bertarung lagi hingga Juni 1997 ketika terjadi pertandingan ulang yang sangat dinanti-nantikan melawan Holyfield pada 28 Juni untuk memperebutkan gelar WBA. Tyson didiskualifikasi dalam ronde ketiga, ketika ia menjadi marah karena terkena serudukan oleh Holyfield dan bertarung tanpa karet pelindung gusinya, ia menggigit sepotong dari telinga Holyfield. Ketika wasit Mills Lane memperingatkan dia, Tyson menyerang telinga lainnya Holyfield. Pada 9 Juli Tyson diskors selama setahun dari bertinju dan didenda $3 juta.\r\n\r\nKarier merosot\r\nPada Januari 1999 Tyson bertarung dengan Frans Botha, seorang petinju Afrika Selatan. Pada awalnya Botha mengendalikan pertarungan, namun Tyson mendaratkan sebuah pukulan yang telak di ronde ke-5 yang menjatuhkan Botha. Pada 5 Februari Tyson dihukum satu tahun penjara, denda $5.000, dan diperintahkan menjalani dua tahun tahanan percobaan dan melakukan 200 jam pelayanan masyarakat atas serangannya pada 31 Agustus 1998 terhadap dua orang setelah kecelakaan mobilnya. Ia menjalani 9 bulan masa tahanan. Ketika dikeluarkan, ia bertarung dengan Orlin Norris pada Oktober. Dalam sebuah adegan bohong, Norris mengaku pergelangan kakinya terkilir pada ronde pertama dan menolak untuk melanjutkan pertarungan.\r\n\r\nPada tahun 2000 Tyson bertarung tiga kali. Yang pertama dilakukan di Inggris melawan Julius Francis, meskipun sejumlah penggemar merasa bahwa Tyson mestinya argumen sebelum pertarungan, apakah Tyson mestinya dibolehkan masuk ke Inggris, lebih menarik daripada KO pada ronde kedua yang dialami Francis. Ia juga bertarung dengan Lou Savarese pada Juni di Glasgow, dan menang pada ronde pertama. Lalu pada Oktober ia menang dalam ronde ke-3 melawan Andrew Golota, yang terkenal kotor. Hasil pertandingan kemudian dianggap batal ketika Tyson gagal dalam menjalani tes penggunaan obat perangsang yang berkaitan dengan pertarungannya. Pada tahun 2001 ia cuma bertarung sekali mengalahkan Brian Nielsen di Kopenhagen dengan TKO pada ronde ke-7.\r\n\r\nTyson berusaha bertarung dengan Lennox Lewis pada 2002 di Nevada, tetapi komisi tinju Nevada menolak memberikannya izin bertanding karena ia menghadapi kemungkinan tuduhan serangan seksual. Pernyataan Tyson terhadap Lewis jauh lebih memuakkan daripada yang pernah dikatakannya sebelumnya \"Saya ingin memakan jantungmu dan kemudian anak-anakmu juga,\" teriaknya. Keributan pada sebuah konferensi pers akhirnya menghapuskan kesempatan bertarung di Nevada. Pertarungan itu akhirnya berlangsung bulan Juni di Memphis, Tennessee. Tyson kalah KO pada ronde ke-8.\r\n\r\nPada 22 Februari 2003, Tyson memukul seorang penantang Clifford Etienne dalam 49 detik memasuki ronde pertama, juga di Memphis. Pertemuan sebelum pertarungan dicemari oleh desas-desus bahwa Tyson tidak cukup fit untuk bertarung dan bahwa ia meninggalkan saat latihan untuk berpesta di Las Vegas dan membuat tato baru di mukanya.\r\n\r\nMencapai titik terendah\r\nPada Agustus 2003, setelah tahun-tahun perjuangan keuangan, Tyson akhirnya bangkrut. Rekening banknya telah dikatakan berjumlah hanya sekitar 5.000 dolar. Di tengah seluruh masalah ekonominya, ia dinobatkan Majalah Ring di nomor 16 di antara seluruh pemukul terbaik sepanjang masa dalam sejarah tinju pada 2003.\r\n\r\nPada 31 Juli 2004 Tyson menghadapi orang Inggris Danny Williams yang tak dipandang di pertandingan \'come-back\' lainnya yang diadakan di Louisville, Kentucky. Tyson mendominasi pembukaan 2 ronde. Ronde ke-3 lebih seri, dengan Williams yang mendapat beberapa pukulan bersih dan juga sedikit yang tak sah, untuk yang mana ia dipidanakan. Di ronde ke-4 Tyson secara mengejutkan dikalahkan. Ia sedang mencoba bertanding dengan 1 kaki karena ikat tulang kakinya robek. Williams melayangkan lebih dari 20 pukulan tak terbalas walau Tyson sepertinya tak luka oleh pukulan-pukulan itu. Sepertinya ia hanya terhuyung-huyung dan saat ia dipukul sampai jatuh, ia tak mencoba kembali bangun. Inilah kekalahan karier ke-5 Tyson. Tyson menyobek ikat tulang di lututnya selama ronde pertama. Ia menjalani pembedahan 4 hari setelah pertandingan. Managernya Shelly Finkel menyatakan bahwa Tyson tak bisa melemparkan tangan kanan yang berarti setelah luka pada lutut.\r\n\r\nKariernya benar-benar habis setelah pada 11 Juni 2005 menyerah TKO ronde 7 atas Kevin McBride. Tyson memutuskan mengundurkan diri pada ronde 7, setelah mengalami frustrasi karena kesulitan menguasai Mc Bride yang dianggap lawan ringan. Sebelumnya, pada puncak frustrasinya, Tyson menanduk secara sengaja lawannya, dan berakibat nilainya dipotong 2 angka oleh wasit Joe Cortez. Setelah pertandingan ini, Tyson mengumumkan pengunduran dirinya dari dunia tinju.\r\n\r\nSempat tampil beberapa kali dalam pertandingan eksibisi empat rondean pada tahun 2006, bahkan sempat pula dilirik oleh promotor Muhammad Arsyad untuk bertanding eksibisi pada pertandingan Chris John, namun hingga kini kiprah Tyson jarang terdengar.\r\n\r\nTrivia\r\nJuara dunia kelas berat termuda di usia 20. Rekor Tyson berada pada 50 kali menang, 5 kali kalah dan 2 tanpa keputusan, dengan 44 KO.\r\n\r\nPada tahun 1987, pada sebuah pesta, filsuf terkenal A.J. Ayer menemukan Mike Tyson menggoda Naomi Campbell dan meminta Tyson berhenti. Tyson berkata \"Tahukah Anda siapakah saya yang f*ck? Sayalah juara kelas berat dunia.\" Ayer menjawab \"Dan sayalah mantan Guru Besar Logika Wykeham!. Kami berdua sangat unggul di bidang kami; Saya usulkan kalau kita bicara tentang lelaki yang sepertinya rasional ini.\"\r\n\r\nPada tahun 1989, Tyson dianugerahi BBC Sports Personality of the Year Overseas Personality Award. Mike Tyson menambahkan rekornya terhadap sebuah mobil yang rusak di Scottsdale, Arizona setelah semalam minum-minum. Kemudian ia ditahan ketika sedang berlatih untuk pertandingan di bulan Maret.\r\n\r\nTyson adalah penyelenggara pertandingan WWF di WrestleMania XIV pada 29 Maret 1998 yang mana ia berpura-pura menjadi anggota D-Generation X dan mengakhiri memukul Shawn Michaels dan membuat 3 hitungan untuk Stone Cold Steve Austin untuk memenangkan Kejuaraan WWF dan Michaels.', '2024-12-04 15:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('USER','ADMIN') NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `create_at`) VALUES
(3, 'amarta', 'valentino@gmail.com', '$2y$10$2QQ6aOMdcX1U5Zsf9MkPIeYqbPPtst2./SCBEtRvvYmxCyrI9FNxi', 'ADMIN', '2024-12-04 14:08:59'),
(4, 'valen', 'tubagusvalentino@gmail.com', '$2y$10$4pKeHRdvNT5jY.qIFXd91.irxbHvGmDwUIc.xTS5EiNWyMUMUSQVS', 'USER', '2024-12-04 14:08:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikels`
--
ALTER TABLE `artikels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikels`
--
ALTER TABLE `artikels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
