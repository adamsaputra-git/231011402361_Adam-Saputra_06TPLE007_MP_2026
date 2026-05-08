import 'package:flutter/material.dart';

void main() {
  runApp(const AdamUTSApp());
}

class AdamUTSApp extends StatelessWidget {
  const AdamUTSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adam UTS',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F7FF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          "Adam UTS Workshop",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // HEADER
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff5B86E5),
                      Color(0xff36D1DC),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),

                child: Row(
                  children: [

                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),

                      child: const Icon(
                        Icons.school,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),

                    const SizedBox(width: 15),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Hallo Selamat Datang",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),

                          SizedBox(height: 5),

                          Text(
                            "Adam Saputra",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Workshop Terbaru",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              workshopCard(
                title: "Workshop Flutter UI",
                date: "15 Mei 2026",
                location: "Lab Komputer A",
                quota: "40 Peserta",
                icon: Icons.phone_android,
                color: Colors.indigo,
              ),

              const SizedBox(height: 18),

              workshopCard(
                title: "Workshop Web Design",
                date: "20 Mei 2026",
                location: "Aula Kampus",
                quota: "60 Peserta",
                icon: Icons.web,
                color: Colors.orange,
              ),

              const SizedBox(height: 18),

              workshopCard(
                title: "Workshop UI/UX",
                date: "28 Mei 2026",
                location: "Gedung Multimedia",
                quota: "35 Peserta",
                icon: Icons.design_services,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget workshopCard({
    required String title,
    required String date,
    required String location,
    required String quota,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Icon(
                    icon,
                    color: color,
                    size: 30,
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            infoRow(Icons.calendar_today, "Tanggal", date),
            const SizedBox(height: 10),

            infoRow(Icons.location_on, "Lokasi", location),
            const SizedBox(height: 10),

            infoRow(Icons.people, "Kuota", quota),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                onPressed: () {},

                child: const Text(
                  "Daftar Sekarang",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoRow(IconData icon, String title, String value) {
    return Row(
      children: [

        Icon(
          icon,
          color: Colors.grey[700],
          size: 20,
        ),

        const SizedBox(width: 10),

        Text(
          "$title : ",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        Expanded(
          child: Text(value),
        ),
      ],
    );
  }
}