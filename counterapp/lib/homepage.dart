import 'package:counterapp/counterprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: HOmeUi(),
    );
  }
}

class HOmeUi extends StatelessWidget {
  const HOmeUi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Provider")),
      ),
      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(
                child: Consumer<CounterProvider>(
                  builder: (context, value, child) => 
                   Text("${value.count}",style: TextStyle(fontSize: 60),)),
              ),
            ],
          ),
          ElevatedButton(onPressed: (){
            Provider.of<CounterProvider>(context,listen: false).incrase();
          }, child: Text("+")),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){
            Provider.of<CounterProvider>(context,listen: false).decrase();
          }, child: Text("--")),
          
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //   Provider.of<CounterProvider>(context,listen: false).incrase();
      // },
      // child: Icon(Icons.add),
      // ),
    
    );
  }
}
// import 'package:flutter/material.dart';

// class Home2 extends StatelessWidget {
//   const Home2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return 
//     Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Noteapp"),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: TextField(
//               decoration: InputDecoration(border: OutlineInputBorder()),
//             ),
            
//           ),
//           SizedBox(
//             height: 10,
            
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: TextField(
//               decoration: InputDecoration(border: OutlineInputBorder()),
//             ),
            
//           ),
//           ElevatedButton(onPressed: (){}, child: Text("Add note")),
//         ],
//       ),
//     );
//   }
// }