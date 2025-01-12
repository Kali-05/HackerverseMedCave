import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class RequestsPage extends StatelessWidget {
  final String destination;
  final String personName;
  final String phoneNumber;
  final String reason;
  final String severity;
  final String type;
  final String consciousness;
  final String breathing;
  final String injuries;
  final String dateTime;
  final String incidentDescription;

  const RequestsPage({
    Key? key,
    required this.destination,
    required this.personName,
    required this.phoneNumber,
    required this.reason,
    required this.severity,
    required this.type,
    required this.consciousness,
    required this.breathing,
    required this.injuries,
    required this.dateTime,
    required this.incidentDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destination),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Request Info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Request from $personName",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  phoneNumber,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Reason for Request
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Reason for Request",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    reason,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Additional Info
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoBox("Severity", severity, "assets/vectors/severity.svg"),
                      _buildInfoBox("Type", type, "assets/vectors/type.svg"),
                      _buildInfoBox("Consciousness", consciousness, "assets/vectors/consciousness.svg"),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Row 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoBox("Breathing", breathing, "assets/vectors/breathing.svg"),
                      _buildInfoBox("Injuries", injuries, "assets/vectors/injuries.svg"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Date and Time
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Date and Time",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    dateTime,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Map Section
            const Text(
              "Live Location",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),



//map goes here



            // Container(
            //   height: 200,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(12),
            //     border: Border.all(color: Colors.grey.shade300),
            //   ),
            //   child: GoogleMap(
            //     initialCameraPosition: const CameraPosition(
            //       target: LatLng(37.7749, -122.4194), // Replace with live location
            //       zoom: 14.0,
            //     ),
            //     myLocationEnabled: true,
            //     zoomControlsEnabled: true,
            //   ),
            // ),
            const SizedBox(height: 16),

            // Incident Description
            const Text(
              "Incident Description",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              incidentDescription,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build individual info boxes
  Widget _buildInfoBox(String title, String value, String svgPath) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      width: 100, // Adjust width
      child: Column(
        children: [
          SvgPicture.asset(
            svgPath,
            height: 40,
           
            width: 40,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
