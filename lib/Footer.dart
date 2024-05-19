import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Address:',
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.bold
                )
              ),
          const Text('Syedpur, Adarsha Sadar, Cumilla',
              style: TextStyle(
                fontSize: 14
                )
              ),
          const SizedBox(height: 10),
          const Text('Telephone',
              style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold
                )
              ),
          const Text('02339334212', 
          style: TextStyle(
            fontSize: 14
            )
            ),
          const SizedBox(height: 10),
          const Text('Mobile No.',
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.bold
                )
              ),
          const Text('+8801756436655', 
          style: TextStyle(
            fontSize: 14
            )
          ),
          const Text('+8801572482331', 
          style: TextStyle(
            fontSize: 14
            )
          ),
          const SizedBox(height: 10),
          const Text('Email',
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.bold
                )
              ),
          const Text('info@baiust.ac.bd', style: TextStyle(fontSize: 14)),
          const Text('admission@baiust.ac.bd', style: TextStyle(fontSize: 14)),
          const SizedBox(height: 10),
          Row(
            children: [
              GestureDetector(
                onTap: () => _launchURL('https://baiust.ac.bd/'),
                child: Image.network(
                  'https://th.bing.com/th?id=OIP.5CztuplBGWWYSG9tbbktTAHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                  height: 20,
                  width: 20,
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () => _launchURL('https://www.youtube.com/@baiustict'),
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/4/42/YouTube_icon_%282013-2017%29.png',
                  height: 20,
                  width: 20,
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () => _launchURL('https://www.facebook.com/baiust'),
                child: Image.network(
                  'https://th.bing.com/th?id=OIP.QHODby_bS81-x2of8vCIhgAAAA&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text('©2023 BAIUST. All Rights Reserved.',
              style: TextStyle(fontSize: 14)),
          const Text('Developed & Powered By ICT Wing & Archive, BAIUST.',
              style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
