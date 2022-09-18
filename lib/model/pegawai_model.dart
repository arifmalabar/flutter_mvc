class PegawaiModel {
  final int id_pegawai;
  final String nama_pegawai;
  final String hoby;
  final String alamat;
  final String images;
  PegawaiModel(this.id_pegawai, this.nama_pegawai, this.hoby, this.alamat, this.images);
  factory PegawaiModel.fromJson(Map<String, dynamic> json){
    return PegawaiModel(json['id_pegawai'], json['nama_pegawai'], json['hoby'], json['alamat'], json['images']);
  }
}