import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: data["user_answer"] == data["correct_answer"]
                          ? const Color.fromARGB(225, 150, 198, 241)
                          : const Color.fromARGB(225, 249, 133, 241),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      ((data["question_index"] as int) + 1).toString(),
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data["question"] as String,
                          style: GoogleFonts.plusJakartaSans(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data["user_answer"] as String,
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color.fromARGB(255, 7, 95, 31),
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          data["correct_answer"] as String,
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color.fromARGB(255, 72, 6, 116),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
