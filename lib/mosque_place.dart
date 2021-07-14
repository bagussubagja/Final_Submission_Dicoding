class MosquePlace{
  String name;
  String address;
  String creditNumber;
  String contactPerson;
  String imageAsset;
  String distance;
  
  MosquePlace({required this.name,
  required this.address,
  required this.creditNumber,
  required this.contactPerson,
  required this.imageAsset,
  required this.distance});
}

var mosquePlaceList = [
  MosquePlace(name: 'Masjid Al-Ikhlas', address: 'Jl. Sudirman No.45, Bandung', creditNumber: 'Nomor Rekening Amil Zakat : 123456789 \n(Bank Mandiri Syariah)', contactPerson: 'Narahubung : 08123456789 (Farhan Fauzaan),', imageAsset: 'images/Masjid1.jpg', distance: '10 Meter'),
  MosquePlace(name: 'Masjid At-Tosin', address: 'Jl. Merdeka No.12, Bandung', creditNumber: 'Nomor Rekening Amil Zakat : 123456789 \n(Bank Mandiri Syariah)', contactPerson: 'Narahubung : 08123456789 (Fikri Arif Rahman)', imageAsset: 'images/Masjid2.jpg', distance: '35 Meter'),
  MosquePlace(name: 'Masjid Al-Hidayah', address: 'Jl. Perjuangan No.20, Bandung', creditNumber: 'Nomor Rekening Amil Zakat : 123456789 \n(Bank Mandiri Syariah)', contactPerson: 'Narahubung : 08123456789 (Riyandi Firman Pratama)', imageAsset: 'images/Masjid3.jpg', distance: '55 Meter'),
  MosquePlace(name: 'Masjid Al-Jihad', address: 'Jl. Cicalengka No.10, Bandung', creditNumber: 'Nomor Rekening Amil Zakat : 123456789 \n(Bank Mandiri Syariah)', contactPerson: 'Narahubung : 08123456789 (Septian Dwi Putra)', imageAsset: 'images/Masjid4.jpg', distance: '78 Meter'),
  MosquePlace(name: 'Masjid Al-Furqon', address: 'Jl. Rancaekek No.17', creditNumber: 'Nomor Rekening Amil Zakat : 123456789 \n(Bank Mandiri Syariah)', contactPerson: 'Narahubung : 08123456789 (Faja Sumitra)', imageAsset: 'images/Masjid5.jpg', distance: '100 Meter'),
  MosquePlace(name: 'Masjid Al-Hikmah', address: 'Jl. Nagreg No.88, Bandung', creditNumber: 'Nomor Rekening Amil Zakat : 123456789 \n(Bank Mandiri Syariah)', contactPerson: 'Narahubung : 08123456789 (Reyhan Agus Priyatna)', imageAsset: 'images/Masjid6.jpg', distance: '250 Meter'),
  MosquePlace(name: 'Masjid Al-Jannah', address: 'Jl. Cikopo No.44, Bandung', creditNumber: 'Nomor Rekening Amil Zakat : 123456789 \n(Bank Mandiri Syariah)', contactPerson: 'Narahubung : 08123456789 (Arfi Triawan)', imageAsset: 'images/Masjid7.jpg', distance: '850 Meter'),
];