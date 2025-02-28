import 'package:flutter/material.dart';
import '../repository/doa_repository.dart';
import '../services/api_services.dart';
import '../model/doa.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DoaRepository doaRepository;
  List<Doa> doaList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    doaRepository = DoaRepository(ApiService());
    fetchDoa();
  }

  // Mengambil semua data doa dari API
  Future<void> fetchDoa() async {
    try {
      List<Doa> data = await doaRepository.getAllDoa();
      setState(() {
        doaList = data;
        isLoading = false;
      });
    } catch (e) {
      print("Error fetching Doa: $e");
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Doa")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator()) // Loading Indicator
          : ListView.builder(
        itemCount: doaList.length,
        itemBuilder: (context, index) {
          Doa doa = doaList[index];
          return ListTile(
            title: Text(doa.doa),
            subtitle: Text(doa.artinya),
          );
        },
      ),
    );
  }
}
