import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class DetallesComercios extends StatefulWidget {
  final Map<String, String> business;

  DetallesComercios({required this.business});

  @override
  _DetallesComerciosState createState() => _DetallesComerciosState();
}

class _DetallesComerciosState extends State<DetallesComercios> {
  bool _locationPermissionGranted = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _checkLocationPermission();
  }

  void _checkLocationPermission() async {
    try {
      final status = await Permission.location.request();
      setState(() {
        if (status.isGranted) {
          _locationPermissionGranted = true;
        } else if (status.isPermanentlyDenied) {
          _errorMessage =
              'Permiso de ubicación denegado permanentemente. Por favor, habilítalo desde la configuración.';
        } else {
          _errorMessage = 'Permiso de ubicación denegado.';
        }
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Ocurrió un error al solicitar permisos: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final latLng = widget.business['location']?.split(', ');
    if (latLng == null || latLng.length != 2) {
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center(child: Text('Ubicación no válida.')),
      );
    }

    final latitude = double.tryParse(latLng[0]);
    final longitude = double.tryParse(latLng[1]);

    if (latitude == null || longitude == null) {
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center(child: Text('Coordenadas no válidas.')),
      );
    }

    if (_errorMessage != null) {
      return Scaffold(
        appBar: AppBar(title: Text(widget.business['name']!)),
        body: Center(child: Text(_errorMessage!)),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(widget.business['name']!)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                widget.business['image']!,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.image_not_supported, size: 200);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.business['description']!,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(latitude, longitude),
                    zoom: 15,
                  ),
                  markers: {
                    Marker(
                      markerId: MarkerId(widget.business['name']!),
                      position: LatLng(latitude, longitude),
                    ),
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
