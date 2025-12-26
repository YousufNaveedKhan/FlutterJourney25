import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;
import 'surah_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quran Offline", style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: quran.totalSurahCount, 
        itemBuilder: (context, index) {
          int surahNumber = index + 1;
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green.shade50,
              child: Text(surahNumber.toString(), style: TextStyle(color: Colors.green)),
            ),
            title: Text(
              quran.getSurahName(surahNumber), 
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              quran.getSurahNameArabic(surahNumber), 
              style: GoogleFonts.amiriQuran(),
            ),
            trailing: Text("${quran.getVerseCount(surahNumber)} Ayahs"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SurahScreen(
                    surahNumber: surahNumber,
                    surahName: quran.getSurahName(surahNumber),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}