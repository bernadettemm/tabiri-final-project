import 'package:flutter/material.dart';

class HeartDiseasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heart Disease'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is Heart Disease?',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Heart disease refers to a range of conditions that affect the heart. It includes conditions such as coronary artery disease, heart rhythm problems, and heart defects. Heart disease is a leading cause of death worldwide.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'What is a Heart Attack?',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'A heart attack, also known as a myocardial infarction, occurs when the blood flow to a section of the heart muscle is blocked. This blockage is often caused by a buildup of plaque in the coronary arteries. Without proper blood flow, the affected heart muscle can be damaged or die.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Symptoms of a Heart Attack',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Common symptoms of a heart attack include:',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text('• Chest pain or discomfort',
                style: TextStyle(fontSize: 16.0)),
            Text('• Shortness of breath', style: TextStyle(fontSize: 16.0)),
            Text('• Pain or discomfort in the jaw, neck, or back',
                style: TextStyle(fontSize: 16.0)),
            Text('• Nausea, indigestion, or heartburn',
                style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 20.0),
            Text(
              'Heart Attack Symptoms in Women',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'In addition to the common symptoms, women may experience the following symptoms during a heart attack:',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text('• Unusual fatigue or weakness',
                style: TextStyle(fontSize: 16.0)),
            Text(
                '• Pain or discomfort in the lower chest, upper abdomen, or both',
                style: TextStyle(fontSize: 16.0)),
            Text('• Lightheadedness or fainting',
                style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 20.0),
            Text(
              'Coronary Artery Disease',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Coronary artery disease (CAD) occurs when the coronary arteries, which supply blood to the heart muscle, become narrowed or blocked due to the buildup ofplaque. This restricts blood flow to the heart, leading to various heart-related problems, including heart attacks.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Inside a Heart Attack',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'During a heart attack, the blockage in a coronary artery cuts off the blood supply to a part of the heart muscle. This can cause the affected muscle cells to be damaged or die. The severity of a heart attack depends on the size and location of the blocked artery.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
