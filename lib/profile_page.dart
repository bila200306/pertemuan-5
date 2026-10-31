import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final String userName = 'Nabila Innas';
  final String role = 'Mahasiswi Software Engineering';

  final List<String> experiences = const [
    'Admid HR - CV. Anugerah Maju Bersama',
    'Staff Digital Marketing - PT. Internusa Persada Elektrik',
    'Graphic Designer - PT. Anugerah Maju Bersama Indonesia',
  ];

  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Profil Pengguna'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 235, 199, 19),
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
         
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromARGB(255, 234, 197, 62),
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              
            
              const SizedBox(width: 16),
              
              Column(
                children: [
                  Text(
                    userName,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    role,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Fitur edit belum aktif pada modul statis.'))
                   );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),
              const SizedBox(height: 24),
              
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 239, 185),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const StatItem(count: '3+', label: 'Pengalaman'),
                    const SizedBox(width: 24),
                    
                    const StatItem(count: '4+', label: 'Keahlian'),
                    const SizedBox(width: 24), 
                    
                    const StatItem(count: '2+', label: 'Bidang'),
                    const SizedBox(width: 24),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pengalaman Kerja',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      leading: const Icon(Icons.work, color: Color.fromARGB(255, 235, 204, 0)),
                      title: Text(experiences[index]),
                    ),
                  );
                }
              ),
            ],
          ),
        ),
      ),
      );
  }
}

class StatItem extends StatelessWidget {
  final String count;
  final String label;

  const StatItem({super.key, required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 228, 175, 0),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}