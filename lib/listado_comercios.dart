import 'package:flutter/material.dart';
import 'detalles_comercios.dart';

class ListadoComercios extends StatelessWidget {
  final List<Map<String, String>> businesses = [
    {
      'name': 'Cafetería Central',
      'image':
          'https://cdn.panampost.com/wp-content/uploads/2023/05/Cafeteria.jpg',
      'description':
          'Te invitamos a disfrutar de una experiencia única donde el café es el protagonista. Ofrecemos una selección de granos locales y de alta calidad, preparados con esmero por baristas expertos que te harán sentir como en casa. Ya sea que busques un café espresso fuerte, un latte cremoso o una deliciosa bebida de temporada, en nuestro espacio acogedor y relajado encontrarás el lugar perfecto para disfrutar de una pausa en tu día. Además, complementa tu bebida con nuestros pasteles y bocadillos caseros, ideales para acompañar esos momentos especiales. ¡Te esperamos!',
      'location': '20.659698, -103.349609',
    },
    {
      'name': 'Tienda de Artesanías',
      'image':
          'https://offloadmedia.feverup.com/cdmxsecreta.com/wp-content/uploads/2020/10/14043614/la-ciudadela-artesanos-19-1024x597.jpg',
      'description':
          'Sumérgete en la tradición de nuestra región con las exquisitas artesanías locales que ofrecemos. Cada pieza es elaborada a mano por talentosos artesanos, quienes utilizan técnicas ancestrales y materiales autóctonos para crear productos únicos, llenos de color y cultura. Desde textiles bordados hasta cerámica pintada a mano, nuestra tienda es el lugar ideal para llevarte un pedazo de la auténtica esencia de nuestra tierra. Perfecto para quienes buscan un regalo especial o desean adornar su hogar con arte local y de calidad.',
      'location': '20.660204, -103.349437',
    },
    {
      'name': 'Cafetería Starbucks',
      'image':
          'https://miamidiario.com/wp-content/uploads/L_5c1a313567bc2_Starbuscks.jpg',
      'description':
          'Disfruta del café de calidad premium en un ambiente moderno y acogedor en Starbucks. Con una amplia variedad de cafés, tés y bebidas de temporada, ofrecemos una experiencia personalizada para cada cliente. Nuestros baristas especializados preparan cada bebida con precisión, utilizando granos de café seleccionados de todo el mundo. Además, complementamos nuestra oferta con deliciosos pasteles, bocadillos y artículos exclusivos que te permiten relajarte mientras disfrutas de un café perfectamente preparado. Ven y sumérgete en la calidad y comodidad de Starbucks.',
      'location': '20.672475, -103.349533',
    },
    {
      'name': 'Farmacias Guadalajara',
      'image':
          'https://www.informador.mx/__export/1664794605836/sites/elinformador/img/2022/10/03/oper_crop1664794601209.jpg_423682103.jpg',
      'description':
          'En Farmacias Guadalajara nos comprometemos a cuidar de tu salud y bienestar con el respaldo de años de experiencia. Ofrecemos una amplia gama de productos farmacéuticos, desde medicamentos de prescripción hasta productos de cuidado personal y vitaminas, todo a precios accesibles. Nuestro equipo de profesionales está siempre dispuesto a brindarte atención personalizada y asesoramiento para que encuentres lo que necesitas. Además, contamos con un surtido de productos para el hogar, perfumería y más. Visítanos y experimenta el servicio cercano y confiable que nos distingue. ¡Tu salud es nuestra prioridad!',
      'location': '20.656901, -103.348242',
    },
    {
      'name': 'Autozone',
      'image':
          'https://zetatijuana.com/wp-content/uploads/2022/04/denunciautozonedescriminacion1b_01.jpg',
      'description':
          'En AutoZone, somos tu aliado confiable para todo lo relacionado con tu vehículo. Ofrecemos una amplia variedad de autopartes, herramientas y accesorios, desde baterías, filtros y aceites hasta productos para el cuidado y mantenimiento del automóvil. Nuestro personal capacitado está listo para ofrecerte asesoría experta y ayudarte a encontrar las piezas exactas que tu vehículo necesita. Además, en AutoZone, nos aseguramos de brindarte la mejor calidad y precios competitivos. Visítanos y mantén tu auto en las mejores condiciones con la confianza y garantía que solo AutoZone te puede ofrecer. ¡Tu auto, nuestra prioridad!',
      'location': '20.661719, -103.345804',
    },
    {
      'name': ' Miniso',
      'image':
          'https://cdn-3.expansion.mx/dims4/default/7832a3a/2147483647/strip/true/crop/3744x2779+0+0/resize/1800x1336!/format/webp/quality/80/?url=https%3A%2F%2Fcherry-brightspot.s3.amazonaws.com%2Fc9%2F05%2F5e71a47f4bef9dcc9ba944d54431%2Fshutterstock-678862129.jpg',
      'description':
          'En Miniso, encuentras una mezcla perfecta de calidad, estilo y precio. Nuestra tienda ofrece una amplia variedad de productos para el hogar, belleza, tecnología, moda y mucho más, todos pensados para hacer tu vida diaria más cómoda y divertida. Con productos diseñados para satisfacer las necesidades cotidianas, Miniso te ofrece artículos innovadores, prácticos y de gran calidad a precios accesibles. Ven a descubrir nuestras colecciones únicas, siempre en tendencia, que te sorprenderán por su originalidad y funcionalidad. ¡Todo lo que necesitas está en Miniso!',
      'location': '20.665398, -103.340755',
    },
    {
      'name': 'Oxxo',
      'image':
          'https://www.excelsior.com.mx/media/pictures/2023/03/16/2920103.jpg',
      'description':
          'En OXXO, siempre encontrarás lo que necesitas al alcance de tu mano. Somos tu tienda de conveniencia de confianza, abierta las 24 horas, los 7 días de la semana, para ofrecerte productos frescos, bebidas, snacks, artículos de higiene, y mucho más. Ya sea que necesites algo urgente o quieras disfrutar de un momento de descanso, OXXO tiene una amplia variedad de opciones para ti. Además, en nuestras tiendas podrás realizar pagos, recargas y otros servicios rápidos, todo en un solo lugar. ¡Visítanos y descubre la comodidad de tener OXXO cerca de ti!',
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
          return ListTile(
            leading: Image.network(
              business['image']!,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.image_not_supported);
              },
            ),
            title: Text(business['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesComercios(business: business),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
