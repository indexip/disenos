import 'package:flutter/material.dart';

class BasicDisingScreen extends StatelessWidget {
  const BasicDisingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          Image(image: AssetImage('assets/landscape.jpg')),
          //Titulo
          Title(),
          //Button section
          ButtonSection(),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                'Tempor dolor minim sunt ex consectetur veniam dolore. Minim nisi consequat mollit quis id non labore consectetur ipsum commodo. Nisi ipsum velit pariatur laboris laboris occaecat esse magna voluptate minim incididunt. Ex aute officia amet officia occaecat dolore adipisicing ipsum pariatur minim Lorem id qui.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Transpores puerto santander',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                'Transpores puerto santander',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
            icono: Icons.call,
            text: 'Call',
          ),
          CustomButton(
            icono: Icons.location_on,
            text: 'Route',
          ),
          CustomButton(
            icono: Icons.share,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.icono,
    required this.text,
  }) : super(key: key);

  final IconData icono;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icono,
          color: Colors.blue,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
