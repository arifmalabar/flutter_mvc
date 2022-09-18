import 'pegawai_model.dart';
class PegawaiResponse{
  final String status;
  final List<PegawaiModel> dataPgw;
  PegawaiResponse(this.status, this.dataPgw);
  factory PegawaiResponse.fromJson(Map<String, dynamic> json){
    var newsJsonList = json['data'] as List;
    List<PegawaiModel> pegawaiList = newsJsonList.map((e) => PegawaiModel.fromJson(e)).toList();
    return PegawaiResponse(json['status'], pegawaiList);
  }
}