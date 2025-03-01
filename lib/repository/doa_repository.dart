import 'package:ibadah_list/model/doa.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoaRepository {
  // Mengambil semua doa
  List<Doa> getAllDoa() {
    return DoaList;
  }

  // Mengambil doa berdasarkan ID
  Doa? getDoa(String id) {
    return DoaList.firstWhere(
      (doa) => doa.id == id,
      orElse: () => throw Exception("Doa tidak ditemukan"),
    );
  }

  // Mencari doa berdasarkan kata kunci (pada nama doa, ayat, latin, atau artinya)
  List<Doa> searchDoa(String query) {
    return DoaList.where((doa) =>
    doa.doa.toLowerCase().contains(query.toLowerCase()) ||
    doa.ayat.toLowerCase().contains(query.toLowerCase()) ||
    doa.latin.toLowerCase().contains(query.toLowerCase()) ||
    doa.artinya.toLowerCase().contains(query.toLowerCase())).toList();
  }

  // Menyimpan ID doa terakhir yang dibaca
  Future<void> saveLastReadDoa(String doaId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("last_read_doa", doaId);
  }

  // Mengambil ID doa terakhir yang dibaca
  Future<String?> getLastReadDoa() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("last_read_doa");
  }
}
