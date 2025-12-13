import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Good Morning, Osama.", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              Container(
                width: 250,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.grey.shade300)),
                child: const Row(children: [Icon(Icons.search, color: Colors.grey), SizedBox(width: 8), Text("Ask Insights for reports...", style: TextStyle(color: Colors.grey))]),
              )
            ],
          ),
          const SizedBox(height: 32),

          // Cards Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: _section("1. HR & Video Screening", _buildHrCard()),
              ),
              const SizedBox(width: 24),
              Expanded(
                flex: 5,
                child: _section("2. Inventory Prediction", _buildInventoryCard()),
              ),
            ],
          ),
          const SizedBox(height: 32),
          
          _section("3. Marketing Strategy (Cairo)", _buildMarketingCard()),
        ],
      ),
    );
  }

  Widget _section(String title, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        child,
      ],
    );
  }

  Widget _buildHrCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          const CircleAvatar(backgroundColor: Colors.grey, child: Icon(Icons.person, color: Colors.white)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Kareem Youssef", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("CV Score: 95% | Cairo, EG", style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                const SizedBox(height: 8),
                Row(children: [const Icon(Icons.play_circle_fill, color: Colors.blue), const SizedBox(width: 8), Text("Video Interview Analysis", style: TextStyle(color: Colors.blue[800], fontWeight: FontWeight.bold))])
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(color: Colors.green[50], borderRadius: BorderRadius.circular(8)),
            child: const Text("9.2/10", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }

  Widget _buildInventoryCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: Colors.red[50], borderRadius: BorderRadius.circular(4)),
                child: const Text("RESTOCK ALERT", style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.bold)),
              ),
              const Text("Product: Arabica Coffee", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(height: 60, child: CustomPaint(painter: SimpleLineChartPainter(), child: Container())),
          const SizedBox(height: 10),
          const Text("AI Reason: Upcoming holiday weekend in Egypt usually spikes demand by 40%", style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildMarketingCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Expanded(child: _infoCol("Target Location", "Nasr City, Cairo", "Facebook Ads (Local)", "Target: Parents 25-45 w/ Children")),
          Expanded(child: _infoCol("Suggested Strategy", "\"Family Bundle\" Offer", "Influencer Collab", "Platform: TikTok (Foodies)", highlightTitle: true)),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(border: Border.all(color: Colors.green.withOpacity(0.3)), borderRadius: BorderRadius.circular(12), color: Colors.green.withOpacity(0.05)),
            child: const Column(children: [Text("Projected ROI", style: TextStyle(color: Colors.grey, fontSize: 12)), Text("22,000 EGP", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16))]),
          )
        ],
      ),
    );
  }

  Widget _infoCol(String label, String value, String subHead, String subDetail, {bool highlightTitle = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: highlightTitle ? Colors.blue : Colors.black)),
        const SizedBox(height: 16),
        Text(subHead, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(subDetail, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

class SimpleLineChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.orange..strokeWidth = 3..style = PaintingStyle.stroke;
    Path path = Path();
    path.moveTo(0, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.9, size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.1, size.width, size.height * 0.3);
    canvas.drawPath(path, paint);
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.5), 4, Paint()..color = Colors.orange);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}