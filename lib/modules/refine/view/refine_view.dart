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
  List<String> selectedChips = [
    "Coffee",
    "Business",
    "Hobbies",
    "Friendship",
    "Movies",
    "Dining",
    "Dating",
    "Matrimony"
  ];
  List<bool> isChipSelected =
      List.filled(8, false); // Initialize with false values

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
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: dropDownButton()),
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
              maxLines: 3,
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
              child: sliderBar()),
          Center(
            child: Text(
              'KMS: ${_selectedValue.round()}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 20,
              width: 250,
              child: Text(
                "Select Purpose",
                style: TextStyle(
                  color: Color.fromARGB(255, 6, 56, 96),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(
              selectedChips.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    // Toggle the selection status of the chip
                    isChipSelected[index] = !isChipSelected[index];
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                      color: isChipSelected[index] // Cehck if chip is selected
                          ? Color.fromARGB(255, 6, 41, 70)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all()),
                  child: Text(
                    selectedChips[index],
                    style: TextStyle(
                      color: isChipSelected[
                              index] // Set text color based on chip selection
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: gestureDetector())
        ],
      ),
    );
  }

  Widget dropDownButton() {
    return DropdownButton<String>(
      value: dropdownValue,
      isExpanded: true,
      icon: const Icon(
        Icons.arrow_drop_down,
      ),
      iconSize: 30,
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
    );
  }

  Widget sliderBar() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: double.infinity,
          height: 50,
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
    );
  }

  Widget gestureDetector() {
    return GestureDetector(
      onTap: () {
        // Handle Save & Explore action
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 6, 41, 70)),
        height: 50,
        width: double.infinity,
        child: const Center(
          child: Text(
            "Save & Explore",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
