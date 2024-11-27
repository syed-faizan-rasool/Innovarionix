import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Dropdown value
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        backgroundColor: const Color.fromARGB(255, 153, 146, 146),  // You can customize this color
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Open drawer logic
          },
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/dummy_logo.png'), // Replace with your image
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Container(

   color: const Color.fromARGB(255, 153, 146, 146), 

            padding: const EdgeInsets.all(8.0),
            
            child: Column(
              children: [
                // Search Bar
                Container(
                  decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(12),
                  ),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      
                      hintText: 'Search...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
          
                // Horizontal Scrollable Cards
                Container(
                height: 140,
                  color: const Color.fromARGB(255, 153, 146, 146), // rgba(71, 71, 71, 1);
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0 , horizontal: 5),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // You can replace this with dynamic data
                      itemBuilder: (context, index) {
                        return Container(
                          width: 120,
                          height: 120,
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                             
                            ],
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.blue,
                                    child: Icon(Icons.group, color: Colors.white),
                                  ),
                                  SizedBox(width: 8),
                                  Text('123', style: TextStyle(fontSize: 15)),
                    
                    
                                ],
                              ),
                              SizedBox(height: 20),
                              Text('Random Group', style: TextStyle(fontSize:13)),
                             
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
          
                // Row with text, dropdown, and icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Select Number:',
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: [
                        DropdownButton<int>(
                          value: selectedValue,
                          items: List.generate(10, (index) {
                            return DropdownMenuItem<int>(
                              value: index + 1,
                              child: Text((index + 1).toString()),
                            );
                          }),
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value!;
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.arrow_forward),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}