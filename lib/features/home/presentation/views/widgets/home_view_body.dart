import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          // image.assets('Welcome to the Home Page'),
          SizedBox(height: 16),
          Text('This is the HomeViewBody'),
          SizedBox(height: 16),
          Text('Here are some quick links for you'),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Text('Link 1'),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Text('Link 2'),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Text('Link 3'),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Text('Link 4'),
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
