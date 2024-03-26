import 'package:flutter/material.dart';

class RefineView extends StatefulWidget {
  const RefineView({Key? key}) : super(key: key);

  @override
  State<RefineView> createState() => _RefineViewState();
}

class _RefineViewState extends State<RefineView> {
  String dropdownValue = 'Available | Hey Let Us Connect';
  final TextEditingController _textEditingController = TextEditingController();
  double _selectedValue = 50;

  @override
  void dispose() {
    _textEditingController.dispose(); // Dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 43, 61),
        title: const Text(
          "Refine",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 20,
              width: 250,
              child: Text(
                "Select Your Availability",
                style: TextStyle(
                  color: Color.fromARGB(255, 6, 56, 96),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 15,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Available | Hey Let Us Connect',
                    'Away | Stat Discrete and Watch',
                    'Busy | Do Not Disturb | Will Catch Up Later',
                    'SOS | Emergency! Need Assistance! HELP'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 20,
              width: 250,
              child: Text(
                "Add Your Status",
                style: TextStyle(
                  color: Color.fromARGB(255, 6, 56, 96),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                hintText: "Hi community! I am open to new connections",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              maxLength: 250,
              maxLines: null,
              onChanged: (text) {
                setState(() {});
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 20,
              width: 250,
              child: Text(
                "Select Hyper local Distance",
                style: TextStyle(
                  color: Color.fromARGB(255, 6, 56, 96),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                ),
                Slider(
                  value: _selectedValue,
                  min: 1,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                ),
                const Positioned(
                  left: 10,
                  bottom: 0,
                  child: Text('1'),
                ),
                const Positioned(
                  right: 10,
                  bottom: 0,
                  child: Text('100'),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'KMS: ${_selectedValue.round()}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  // void main() {
  //   runApp(const MaterialApp(
  //     home: RefineView(),
  //   ));
  Widget buildNumberItem(int value) {
    return GestureDetector(
      onTap: () {
        // Handle the selection of the number
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: Text(
          value.toString(),
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
