import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';

class ReportForm extends StatefulWidget {
  @override
  _ReportFormState createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Image.asset('assets/images/menu.png', color: TColors.primary),
        ),
        title: const Text('Tama App', style: TextStyle(color: TColors.primary),),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white70, width: 2),
                shape: BoxShape.circle
            ),
            child: const CircleAvatar(
                radius: 20,
                foregroundImage: AssetImage('assets/images/content/user.png')
            ),
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Report Traffic Congestion',
                style: TextStyle(
                  color: TColors.primary,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Please fill out the relevant information in each section.',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
              Text(
                'Fields marked with * are mandatory.',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 32),
              _buildTextField('When did it happen?', 'Enter date and time'),
              SizedBox(height: 16),
              _buildTextField('Where did it happen?', 'Enter location'),
              SizedBox(height: 16),
              _buildTextField('Description', 'Enter description'),
              SizedBox(height: 16),
              _buildImageUploadField(),
              SizedBox(height: 32),
              _buildPreviewButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hintText) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }

  Widget _buildImageUploadField() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Image Upload*',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select an image';
              }
              return null;
            },
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 82,
          height: 31,
          decoration: BoxDecoration(
            color: TColors.primary,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              'Upload',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPreviewButton() {
    return ElevatedButton(
      onPressed: () {
        // Handle preview button tapPreviewWindow

      },
      style: ElevatedButton.styleFrom(
        backgroundColor: TColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      ),
      child: Text(
        'Preview',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }
}