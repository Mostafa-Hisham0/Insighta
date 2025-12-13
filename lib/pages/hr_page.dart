import 'package:flutter/material.dart';

class HrRecruitmentPage extends StatelessWidget {
  const HrRecruitmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("HR & Recruitment", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const Text("AI Video Screening & CV Scoring", style: TextStyle(color: Colors.grey)),
        const SizedBox(height: 24),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Active Candidates", style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    _candidateCard("Kareem Y.", "Backend Dev • 95%", true),
                    _candidateCard("Sara Ahmed", "UI Designer • 88%", false),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(color: const Color(0xFF0F172A), borderRadius: BorderRadius.circular(12)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            const Icon(Icons.play_arrow, color: Colors.white, size: 48),
                            Positioned(bottom: 16, left: 16, right: 16, child: LinearProgressIndicator(value: 0.3, color: Colors.blue, backgroundColor: Colors.grey[800])),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Align(alignment: Alignment.centerLeft, child: Text("AI Assessment", style: TextStyle(fontWeight: FontWeight.bold))),
                      const SizedBox(height: 16),
                      Row(children: [_statBar("Confidence", 0.9, Colors.green), const SizedBox(width: 16), _statBar("Tech Knowledge", 0.75, Colors.blue), const SizedBox(width: 16), _statBar("English Level", 0.85, Colors.orange)]),
                      const SizedBox(height: 24),
                      Container(
                        padding: const EdgeInsets.all(16),
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.grey[50], borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.grey[200]!)),
                        child: const Text("\"I handled the database migration for the National Bank...\"", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _candidateCard(String name, String role, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: isSelected ? Border.all(color: Colors.blue, width: 2) : null,
      ),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: isSelected ? Colors.blue[100] : Colors.grey[200], child: const Icon(Icons.person, size: 20, color: Colors.black54)),
          const SizedBox(width: 12),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(name, style: const TextStyle(fontWeight: FontWeight.bold)), Text(role, style: const TextStyle(fontSize: 12, color: Colors.grey))])
        ],
      ),
    );
  }

  Widget _statBar(String label, double val, Color color) {
    return Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)), const SizedBox(height: 6), LinearProgressIndicator(value: val, color: color, backgroundColor: color.withOpacity(0.1), minHeight: 6, borderRadius: BorderRadius.circular(4))]),
    );
  }
}