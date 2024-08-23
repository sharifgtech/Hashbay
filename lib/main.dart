import 'package:flutter/material.dart';

import 'demofile.dart';

void main() {
  runApp(SoftwareDevelopmentCompany());
}

class SoftwareDevelopmentCompany extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Software Development Company',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 18.0),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/services': (context) => ServicesPage(),
        '/portfolio': (context) => PortfolioPage(),
        '/contact': (context) => ContactPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HashBay Technology'),
        backgroundColor: Color(0x100A4C86),
        actions: [
          _navButton(context, 'Home', '/'),
          _navButton(context, 'About', '/about'),
          _navButton(context, 'Services', '/services'),
          _navButton(context, 'Portfolio', '/portfolio'),
          _navButton(context, 'Contact', '/contact'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeroSection(),
            _buildServicesSection(),
            _buildPortfolioSection(),
            _buildContactSection(),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  TextButton _navButton(BuildContext context, String title, String route) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(title, style: TextStyle(color: Colors.black)),
    );
  }

  Widget _buildHeroSection() {
    return


        Container(
          width: double.infinity,  // Set the width of the container
          height: 400, // Set the height of the container
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bannerhome.jpg'),
              fit: BoxFit.cover, // Cover the entire container
            ),
          ),
        padding: EdgeInsets.all(10.0), // Optional padding around the container
        child: Column(
          // Center the images in the container
          children: <Widget>[
            Image.asset(
              'assets/images/hashbaylogo.png',
              width: double.infinity,
              height: 200,
            ),
            SizedBox(height: 5),
            Text(
              'Transform Your Business Today',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            Text(
              'Empower your team with cutting-edge software solutions.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            // Space between images

          ],
        ),
      );

  }

  Widget _buildServicesSection() {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Column(
        children: [
          Text(
            'Why Choose Hasbaytechnology',
            style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          SizedBox(height: 60),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // First Circle Image
              Column(
                children: [
                  CircleAvatar(
                    radius: 130, // Adjust the radius as needed
                    backgroundImage: AssetImage('assets/images/quality.jpg'), // Replace with your image URL
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Expertise',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 280,
                    height: 180,

                    child: Center(
                      child: Text(
                        'Our team consists of experienced software developers and designers who have worked on a variety of projects. We have expertise in a range of technologies and tools, including cloud computing, machine learning, and blockchain technology.',
                        style: TextStyle(fontSize: 16, ) ,textAlign: TextAlign.center,maxLines: 100,textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 60),
          // Spacing between images

              // Second Circle Image
              Column(
                children: [
                  CircleAvatar(
                    radius: 130, // Adjust the radius as needed
                    backgroundImage: AssetImage('assets/images/communication.jpg'), // Replace with your image URL
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Quality',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 40),
                  Container(
                    width: 280,
                    height: 180,

                    child: Center(
                      child: Text(
                        'We are committed to delivering high-quality software solutions to our clients. Our team follows best practises in software development and testing to ensure that our clients receive a reliable and bug-free product.                             ',
                        style: TextStyle(fontSize: 16, ) ,textAlign: TextAlign.center,maxLines: 100,textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(width: 60),

              // Third Circle Image
              Column(
                children: [
                  CircleAvatar(
                    radius: 130, // Adjust the radius as needed
                    backgroundImage: AssetImage('assets/images/experties.png'), // Replace with your image URL
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Communication',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 280,
                    height: 180,


                    child: Center(
                      child: Text('We believe that communication is key to a successful project. We work closely with our clients to understand their needs and keep them informed throughout the development process.',
                        style: TextStyle(fontSize: 16, ) ,textAlign: TextAlign.center,maxLines: 100,textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard(String title) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.code, size: 40, color: Colors.indigo),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }

  Widget _buildPortfolioSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,  // Set the width of the container
            height: 400, // Set the height of the container
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bannertwo.png'),
                fit: BoxFit.cover, // Cover the entire container
              ),
            ),
            padding: EdgeInsets.all(50.0), // Optional padding around the container
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // Center the images in the container
              children: <Widget>[


                Center(
                  child: Text(
                    'Customer satisfaction is our top priority!',
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  ' Empower your team with cutting-edgehgfhgfhgf software solutions.',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                // Space between images

              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPortfolioItem(String title) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          color: Colors.indigo[100],
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.indigo),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(title, style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget _buildContactSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Us',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Email: hashbaytechnology@gmail.com',
          ),
          SizedBox(height: 5),
          Text(
            'Phone: +917899347270',
          ),
          SizedBox(height: 5),
          Text(
            'Address:  NO 397, KNO 55, 2ND FLR,\n'
                '6TH CROSS,BILWARADAHALLI RAGIHALLI,\n '
                'BANGALORE,KARNATAKA, INDIA, 560083',
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      color: Colors.indigo,
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          'Copyright © 2024 hasbaytechnology.co.in - All Rights Reserved.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        actions: [
          _navButton(context, 'Home', '/'),
          _navButton(context, 'About', '/about'),
          _navButton(context, 'Services', '/services'),
          _navButton(context, 'Portfolio', '/portfolio'),
          _navButton(context, 'Contact', '/contact'),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/hashbaylogo.png'), // Company logo image
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Why Choose hasbaytechnology',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Expertise',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                ' Our team consists of experienced software developers and designers who have worked on a variety of projects. We have expertise in a range of technologies and tools, including cloud computing, machine learning, and blockchain technology.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Text(
                'Quality',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We are committed to delivering high-quality software solutions to our clients. Our team follows best practises in software development and testing to ensure that our clients receive a reliable and bug-free product.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Text(
                'Communication',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We believe that communication is key to a successful project. We work closely with our clients to understand their needs and keep them informed throughout the development process.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),

              SizedBox(height: 10),


            ],
          ),
        ),
      ),
    );
  }

  TextButton _navButton(BuildContext context, String title, String route) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(title, style: TextStyle(color: Colors.white)),
    );
  }
}

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Services'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Get a Quote',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroSection(),
            ServicesOverviewSection(),
          /*  PortfolioSection(),
            TestimonialsSection(),
            CallToActionSection(),
            FooterSection(),*/
          ],
        ),
      ),
    );
  }
}

class ServicesOverviewSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '     Our Services',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(

                width: MediaQuery.of(context).size.width * 0.4, // 40% of screen width
                height: 280,
                child: ServiceCard(
                  icon: Icons.web,
                  title: 'Custom Software Development',
                  description:
                  'We specialize in creating custom software solutions for businesses of all sizes. Our team of experienced developers can build software from scratch or work with existing code to create a product that meets your unique needs.',
                ),
              ),
              Container(

                width: MediaQuery.of(context).size.width * 0.4, // 40% of screen width
                height: 280,
                child: ServiceCard(
                  icon: Icons.web,
                  title: 'Web Development',
                  description:
                  'We design and develop beautiful, responsive websites that are optimized for speed and usability. Our team of web developers has experience working with a variety of platforms and programming languages to create websites that are tailored to your specific needs.',
                ),
              ),

            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(

                width: MediaQuery.of(context).size.width * 0.4, // 40% of screen width
                height: 280,
                child: ServiceCard(
                  icon: Icons.web,
                  title: 'Mobile App Development',
                  description:
                  'Our team of mobile app developers can help you bring your ideas to life on iOS and Android platforms. We specialize in developing native mobile apps that are fast, reliable and easy to use.',
                ),
              ),
              Container(

                width: MediaQuery.of(context).size.width * 0.4, // 40% of screen width
                height: 280,
                child: ServiceCard(
                  icon: Icons.web,
                  title: 'IT Consulting',
                  description:
                  'Our team of experts can help you with all your IT needs, from network design and implementation to cybersecurity and data backup. We work with businesses of all sizes to provide customized IT solutions that meet their unique needs.',
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bannertwo.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Empower Your Business with Flutter Web Solutions',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Start Your Project Today'),
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Portfolio'),
        actions: [
          _navButton(context, 'Home', '/'),
          _navButton(context, 'About', '/about'),
          _navButton(context, 'Services', '/services'),
          _navButton(context, 'Portfolio', '/portfolio'),
          _navButton(context, 'Contact', '/contact'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Portfolio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildPortfolioItem('Project Alpha'),
            _buildPortfolioItem('Project Beta'),
            _buildPortfolioItem('Project Gamma'),
          ],
        ),
      ),
    );
  }

  Widget _buildPortfolioItem(String project) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        '$project: A cutting-edge project that showcases our expertise in software development.',
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  TextButton _navButton(BuildContext context, String title, String route) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(title, style: TextStyle(color: Colors.white)),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        actions: [
          _navButton(context, 'Home', '/'),
          _navButton(context, 'About', '/about'),
          _navButton(context, 'Services', '/services'),
          _navButton(context, 'Portfolio', '/portfolio'),
          _navButton(context, 'Contact', '/contact'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextFormField(

              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(

              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(

              decoration: InputDecoration(labelText: 'Subject'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a subject';
                }
                return null;
              },
            ),
            TextFormField(

              decoration: InputDecoration(labelText: 'Message'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your message';
                }
                return null;
              },
              maxLines: 4,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  TextButton _navButton(BuildContext context, String title, String route) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(title, style: TextStyle(color: Colors.white)),
    );
  }
}

void _submitForm() {
 {
    // Perform form submission here, e.g., send data to server

      SnackBar(content: Text('Form submitted successfully!'),
    );
  }
}
