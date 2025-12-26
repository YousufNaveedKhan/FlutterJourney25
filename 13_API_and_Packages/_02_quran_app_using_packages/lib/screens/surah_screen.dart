import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;

class SurahScreen extends StatelessWidget {
  final int surahNumber;
  final String surahName;

  SurahScreen({required this.surahNumber, required this.surahName});

  @override
  Widget build(BuildContext context) {
    int verseCount = quran.getVerseCount(surahNumber);

    return Scaffold(
      appBar: AppBar(
        title: Text(surahName, style: GoogleFonts.poppins()),
        backgroundColor: Colors.green.shade700,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          if (surahNumber != 1 && surahNumber != 9)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                quran.basmala,
                style: GoogleFonts.amiriQuran(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          
          Expanded(
            child: ListView.builder(
              itemCount: verseCount,
              itemBuilder: (context, index) {
                int verseNumber = index + 1;
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: index % 2 == 0 ? Colors.white : Colors.green.withOpacity(0.05),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        quran.getVerse(surahNumber, verseNumber, verseEndSymbol: true),
                        style: GoogleFonts.amiriQuran(
                          fontSize: 22,
                          height: 2,
                        ),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: 10),
                      Text(
                        quran.getVerseTranslation(surahNumber, verseNumber),
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}