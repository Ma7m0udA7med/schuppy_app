import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complete account details"),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xFF1D6D4D),
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 24),
              _textField("First name"),
              const SizedBox(height: 16),
              _textField("Last name"),
              const SizedBox(height: 16),
              _textField("Qatar ID Number"),
              const SizedBox(height: 16),
              _dropdownField("User Role", ["Parent", "Student"]),
              const SizedBox(height: 16),
              _textField("Mobile number", prefix: "+966"),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1D6D4D),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField(String label, {String? prefix}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        prefixText: prefix,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _dropdownField(String label, List<String> items) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
      onChanged: (val) {},
    );
  }
}
