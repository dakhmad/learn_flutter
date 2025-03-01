import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ibadah_list/model/doa.dart';
import 'package:ibadah_list/repository/doa_repository.dart';
import 'package:ibadah_list/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DoaRepository doaRepository = DoaRepository();
  final TextEditingController searchController = TextEditingController();

  List<Doa> doaList = [];
  List<Doa> filteredDoaList = [];
  Doa? lastReadDoa;

  @override
  void initState() {
    super.initState();
    doaList = doaRepository.getAllDoa();
    filteredDoaList = doaList;
    _loadLastReadDoa();
  }

  void searchDoa(String query) {
    setState(() {
      filteredDoaList = doaRepository.searchDoa(query);
    });
  }

  Future<void> _loadLastReadDoa() async {
    String? lastReadId = await doaRepository.getLastReadDoa();
    if (lastReadId != null) {
      setState(() {
        lastReadDoa = doaRepository.getDoa(lastReadId);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF9FBFF),
        body: Container(
          margin:  const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian atas
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "List Doa",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xff2C2C2C),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Mari jelajahi list doa ini!",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff8C8C8C),
                        ),
                      ),
                    ],
                  ),
              ),

              // Bagian search bar
              Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 12),
                child: TextField(
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xffAEAEAE),
                  ),
                  controller: searchController,
                  onChanged: searchDoa,
                  decoration: InputDecoration(
                    hintText: "Cari doa...",
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),

              // Bagian container penampil last read
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Card(
                    color: Color(0xff8c5cd4),
                    child: InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Ayo semangat puasanya! 🔥"),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Container(
                                width: 160,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Last Read Doa",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      lastReadDoa != null
                                          ? lastReadDoa!.doa
                                          : "Belum membaca salah satu doa",
                                      softWrap: true,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Image.asset("images/al_quran.png", fit: BoxFit.cover,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Pemisah
              Padding(
                padding: const EdgeInsets.only(left: 24, bottom: 24, top: 24),
                child: Text(
                  "Kumpulan Doa",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff2C2C2C),
                  ),
                ),
              ),

              // Bagian list doa-doa
              Expanded(
                child: ListView.builder(
                  itemCount: filteredDoaList.length,
                  itemBuilder: (context, index) {
                    Doa doa = filteredDoaList[index];
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                      color: Color(0xffFFFFFF),
                      child: ListTile(
                        title: Text(doa.doa, style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(doa.artinya),
                        onTap: () async {
                          await doaRepository.saveLastReadDoa(doa.id);
                          setState(() {
                            lastReadDoa = doa;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(doa: doa),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
