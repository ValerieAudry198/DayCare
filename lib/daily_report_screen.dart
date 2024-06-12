import 'package:flutter/material.dart';

class DailyReportScreen extends StatefulWidget {
  const DailyReportScreen({Key? key}) : super(key: key);

  @override
  _DailyReportScreenState createState() => _DailyReportScreenState();
}

class _DailyReportScreenState extends State<DailyReportScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _temperatureController = TextEditingController();
  final TextEditingController _conditionController = TextEditingController();
  final TextEditingController _breakfastController = TextEditingController();
  final TextEditingController _lunchController = TextEditingController();
  final TextEditingController _dinnerController = TextEditingController();
  final TextEditingController _fluidsController = TextEditingController();
  final TextEditingController _snackController = TextEditingController();
  final TextEditingController _toiletTimeController = TextEditingController();
  final TextEditingController _sleepStartController = TextEditingController();
  final TextEditingController _sleepEndController = TextEditingController();
  final TextEditingController _milkTimeController = TextEditingController();
  final TextEditingController _milkQuantityController = TextEditingController();
  final TextEditingController _bathTimeController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _temperatureController.dispose();
    _conditionController.dispose();
    _breakfastController.dispose();
    _lunchController.dispose();
    _dinnerController.dispose();
    _fluidsController.dispose();
    _snackController.dispose();
    _toiletTimeController.dispose();
    _sleepStartController.dispose();
    _sleepEndController.dispose();
    _milkTimeController.dispose();
    _milkQuantityController.dispose();
    _bathTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bintang Daily Report'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextInput('Name', _nameController),
              buildTextInput('Body Temperature', _temperatureController),
              buildTextInput('Condition Status', _conditionController),
              const SizedBox(height: 20),
              buildSectionTitle('Meals'),
              buildCardSection('Breakfast', _breakfastController),
              buildCardSection('Lunch', _lunchController),
              buildCardSection('Dinner', _dinnerController),
              buildCardSection('Fluids', _fluidsController),
              buildCardSection('Snack', _snackController),
              const SizedBox(height: 20),
              buildSectionTitle('Toilet'),
              buildCardSection('Toilet Time', _toiletTimeController),
              const SizedBox(height: 20),
              buildSectionTitle('Sleep'),
              buildCardSection('Sleep Start Time', _sleepStartController),
              buildCardSection('Sleep End Time', _sleepEndController),
              const SizedBox(height: 20),
              buildSectionTitle('Milk'),
              buildCardSection('Milk Time', _milkTimeController),
              buildCardSection('Milk Quantity', _milkQuantityController),
              const SizedBox(height: 20),
              buildSectionTitle('Bath'),
              buildCardSection('Bath Time', _bathTimeController),
              const SizedBox(height: 20),
              buildSectionTitle('Notes for My Parents:'),
              buildNotesSection(),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Save data logic here
                  },
                  child: const Text('Save Report'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextInput(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildCardSection(String title, TextEditingController controller) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Enter $title',
                border: const OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNotesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Items I Need:'),
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            const Text('Diapers'),
            Checkbox(value: false, onChanged: (value) {}),
            const Text('Hand Towel'),
            Checkbox(value: false, onChanged: (value) {}),
            const Text('Cream'),
            Checkbox(value: false, onChanged: (value) {}),
            const Text('Clothes'),
          ],
        ),
        Row(
          children: [
            Checkbox(value: false, onChanged: (value) {}),
            const Text('Towel'),
            Checkbox(value: false, onChanged: (value) {}),
            const Text('Soap & Shampoo'),
            Checkbox(value: false, onChanged: (value) {}),
            const Text('Milk'),
            Checkbox(value: false, onChanged: (value) {}),
            const Text('Tooth Paste'),
          ],
        ),
        const TextField(
          decoration: InputDecoration(labelText: 'Other'),
        ),
      ],
    );
  }
}
