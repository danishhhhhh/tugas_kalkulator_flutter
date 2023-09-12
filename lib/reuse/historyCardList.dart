import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/history_pages/model/historyClass.dart';

class HistoryCardList extends StatelessWidget {
  const HistoryCardList({super.key, required this.history});

  final CalculatorHistory history;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: const Color(0xFF869BDD),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              margin: EdgeInsets.all(5),
              child: Image.asset(
                history.image,
                height: 60,
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFC9D3F6),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                history.title,
                style: const TextStyle(
                  fontFamily: 'LilitaOne',
                  fontSize: 20,
                  color: Color(0xFF1E1E1E),
                ),
              ),
              Text(
                "Hasil : ${history.hasil}",
                style: const TextStyle(
                  fontFamily: 'LilitaOne',
                  fontSize: 15,
                  color: Color(0xFFF5F8FF),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
