import 'package:ibadah_list/model/doa.dart';
import 'package:ibadah_list/services/api_services.dart';

class DoaRepository {
  final ApiService apiService;

  DoaRepository(this.apiService);

  // Fetch all Doa
  Future<List<Doa>> getAllDoa() async {
    return await apiService.fetchProducts();
  }

  // Get a single Doa by ID
  Future<Doa?> getDoa(int id) async {
    List<Doa> allDoa = await getAllDoa();
    return allDoa.firstWhere((doa) => doa.id == id);
  }

  // Search Doa by keyword
  Future<List<Doa>> searchDoa(String keyword) async {
    List<Doa> allDoa = await getAllDoa();
    return allDoa.where((doa) =>
    doa.doa.toLowerCase().contains(keyword.toLowerCase()) ||
        doa.ayat.toLowerCase().contains(keyword.toLowerCase()) ||
        doa.latin.toLowerCase().contains(keyword.toLowerCase()) ||
        doa.artinya.toLowerCase().contains(keyword.toLowerCase())
    ).toList();
  }
}
