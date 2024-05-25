import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasicDesignsScreen extends StatelessWidget {
  const BasicDesignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),
          const Title(),
          const _BottomSection(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
                'Vamos a ver eeeh uuum… ¿Medidas para crear empleo? Bueno la verdad es que me ha pasado una cosa verdaderamente notable que lo he escrito aquí y no entiendo mi letra, por lo tanto, la desconfianza de los inversobres, por otra parte, its very difficult todo esto, a fin de cuentas, para mí, ser presidente del país es la pera. ¡Venga ya! ¡Toma democracia!'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class _BottomSection extends StatelessWidget {
  const _BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomItem(icon: Icons.phone, text: 'CALL'),
          BottomItem(icon: Icons.send, text: 'ROUTE'),
          BottomItem(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class BottomItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const BottomItem({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.lightBlue,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.lightBlue),
        )
      ],
    );
  }
}
