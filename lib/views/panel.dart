import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Panel extends StatefulWidget {
  const Panel({super.key});

  @override
  State<Panel> createState() => _PanelState();
}

class _PanelState extends State<Panel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gelir & Gider Paneli")),
      body: Padding(
        padding: const EdgeInsets.only(top: 64.0, left: 16.0, right: 16.0),
        child: Column(
          children: [
            // İki Daire Grafiğini İçeren Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // İlk Grafik
                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: PieChart(
                        PieChartData(
                          sections: [
                            PieChartSectionData(
                              color: Colors.green,
                              value: 70,
                              title: 'Gelir %70',
                              radius: 60,
                              titleStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            PieChartSectionData(
                              color: Colors.red,
                              value: 30,
                              title: 'Gider %30',
                              radius: 60,
                              titleStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                          sectionsSpace: 2,
                          centerSpaceRadius: 30,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text("Temmuz Ayı", style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(width: 20.0), // İki grafik arasındaki boşluk
                // İkinci Grafik
                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: PieChart(
                        PieChartData(
                          sections: [
                            PieChartSectionData(
                              color: Colors.green,
                              value: 60,
                              title: 'Gelir %60',
                              radius: 60,
                              titleStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            PieChartSectionData(
                              color: Colors.red,
                              value: 40,
                              title: 'Gider %40',
                              radius: 60,
                              titleStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                          sectionsSpace: 2,
                          centerSpaceRadius: 30,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text("Ağustos Ayı", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40), // Daire grafikler ile çubuk grafik arasındaki boşluk
            // Çubuk Grafik
            SizedBox(
              height: 250,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  barGroups: [
                    BarChartGroupData(
                      x: 0, // Sıfırdan başlat
                      barsSpace: 10,
                      barRods: [
                        BarChartRodData(
                          toY: 12,
                          color: Colors.green,
                          width: 20,
                          borderRadius: BorderRadius.zero,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1, // İkinci bar için 1
                      barsSpace: 10,
                      barRods: [
                        BarChartRodData(
                          toY: 6,
                          color: Colors.red,
                          width: 20,
                          borderRadius: BorderRadius.zero,
                        ),
                      ],
                    ),
                  ],
                  titlesData: const FlTitlesData(
                    show: true,
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      axisNameWidget: Text(
                        "Kâr & Zarar",
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(
                      color: const Color(0xff37434d),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
