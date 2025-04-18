import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Welcome!', style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 20),
            const ToggleButton(),
          ],
        ),
      ),
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  int _selectedIndex = -1;

  void _onButtonPressed(int index){
    setState(() {
      _selectedIndex = index;
      if(index == 0){
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
      }
      else if(index == 1){
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }

    });
  }

  @override
  Widget build(BuildContext context){
    final List<String> buttonLabels = ['Sign Up', 'Sign In'];

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(buttonLabels.length, (index) {
          final bool isSelected = _selectedIndex == index;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ElevatedButton(
              onPressed: () => _onButtonPressed(index),
              style: ElevatedButton.styleFrom(
                backgroundColor: isSelected ? Colors.blue : Colors.grey,
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              child: Text(buttonLabels[index]),
            ),
          );
        }),
      ),
    );
  }
}