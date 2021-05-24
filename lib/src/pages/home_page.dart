import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SALES TOP',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            'assets/image.svg',
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
          ),
          Text(
            'Hello!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            'Welcome to Sales TOP A Platform To \nManage Real State Needs.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          Botones(),
          Text('Or via social media'),
          SocialMedia(),
        ],
      ),
    );
  }
}

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.lightBlue.shade900,
          child: FaIcon(
            FontAwesomeIcons.facebook,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 5,
        ),
        FloatingActionButton(
          backgroundColor: Colors.red.shade800,
          child: FaIcon(
            FontAwesomeIcons.google,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 5,
        ),
        FloatingActionButton(
          backgroundColor: Colors.indigo.shade900,
          child: FaIcon(
            FontAwesomeIcons.linkedin,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class Botones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          width: 100,
          height: 50,
          child: ElevatedButton(
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.blue.shade900,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          width: 100,
          height: 50,
          child: OutlinedButton(
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
        )
      ],
    );
  }
}
