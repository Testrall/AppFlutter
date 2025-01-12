import 'package:flutter/material.dart';
import 'detalles_comercios.dart';

class ListadoComercios extends StatelessWidget {
  final List<Map<String, String>> businesses = [
    {
      'name': 'Cafetería Central',
      'image':
          'https://cdn.panampost.com/wp-content/uploads/2023/05/Cafeteria.jpg',
      'description':
          'Disfruta del aroma y sabor del café recién preparado en un ambiente acogedor. Ofrecemos bebidas artesanales, postres caseros y un lugar perfecto para relajarte o trabajar. ¡Ven y vive la experiencia local!',
      'location': '20.659698, -103.349609',
    },
    {
      'name': 'Tienda de Artesanías',
      'image':
          'https://offloadmedia.feverup.com/cdmxsecreta.com/wp-content/uploads/2020/10/14043614/la-ciudadela-artesanos-19-1024x597.jpg',
      'description':
          'Encuentra piezas únicas hechas a mano que reflejan la riqueza cultural de nuestra región. Desde textiles hasta cerámica, cada creación cuenta una historia. ¡Apoya el arte local!',
      'location': '20.660204, -103.349437',
    },
    {
      'name': 'Cafetería Starbucks',
      'image':
          'https://miamidiario.com/wp-content/uploads/L_5c1a313567bc2_Starbuscks.jpg',
      'description':
          'Tu lugar favorito para disfrutar de café de calidad, bebidas únicas y un ambiente cómodo. Perfecto para relajarte, trabajar o compartir momentos especiales. ¡Visítanos y encuentra tu bebida ideal!',
      'location': '20.672475, -103.349533',
    },
    {
      'name': 'Farmacias Guadalajara',
      'image':
          'https://www.informador.mx/__export/1664794605836/sites/elinformador/img/2022/10/03/oper_crop1664794601209.jpg_423682103.jpg',
      'description':
          'Tu farmacia de confianza con medicamentos, productos de cuidado personal y servicio las 24 horas. Siempre cerca de ti para cuidar de tu salud y bienestar.',
      'location': '20.656901, -103.348242',
    },
    {
      'name': 'Autozone',
      'image':
          'https://zetatijuana.com/wp-content/uploads/2022/04/denunciautozonedescriminacion1b_01.jpg',
      'description':
          'Todo lo que tu auto necesita en un solo lugar. Refacciones, accesorios y herramientas con la mejor asesoría para mantener tu vehículo en óptimas condiciones. ¡Ven y encuentra lo que buscas!',
      'location': '20.661719, -103.345804',
    },
    {
      'name': ' Miniso',
      'image':
          'https://cdn-3.expansion.mx/dims4/default/7832a3a/2147483647/strip/true/crop/3744x2779+0+0/resize/1800x1336!/format/webp/quality/80/?url=https%3A%2F%2Fcherry-brightspot.s3.amazonaws.com%2Fc9%2F05%2F5e71a47f4bef9dcc9ba944d54431%2Fshutterstock-678862129.jpg',
      'description':
          'Descubre productos innovadores y accesibles para el hogar, tecnología, belleza y más. Con una variedad de artículos de alta calidad y diseño único, ¡haz de tu día a día una experiencia divertida y práctica!',
      'location': '20.665398, -103.340755',
    },
    {
      'name': 'Oxxo',
      'image':
          'https://www.excelsior.com.mx/media/pictures/2023/03/16/2920103.jpg',
      'description':
          'Tu tienda de conveniencia 24/7. Encuentra lo que necesitas al instante: desde snacks, bebidas y productos de uso diario, hasta pagos y servicios. ¡Siempre cerca de ti para lo que necesites!',
      'location': '20.659250, -103.348930',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Negocios')),
      body: ListView.builder(
        itemCount: businesses.length,
        itemBuilder: (context, index) {
          final business = businesses[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    business['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.image_not_supported, size: 60);
                    },
                  ),
                ),
                title: Text(business['name']!),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetallesComercios(business: business),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
