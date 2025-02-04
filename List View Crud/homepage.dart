import 'package:flutter/material.dart';
import 'user.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<User> users = [];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: const Text('User List'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Enter Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                // validator: (value) {
                //   if (value == null || value.trim().isEmpty) {
                //     return 'Enter Name';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                // validator: (value) {
                //   if (value == null || value.trim().isEmpty) {
                //     return 'Enter Email Address';
                //   }
                //   final emailRegex = RegExp(
                //       r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
                //   if (!emailRegex.hasMatch(value.trim())) {
                //     return 'Enter Valid Email Address';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          users.add(User(
                            name: nameController.text.trim(),
                            email: emailController.text.trim(),
                          ));
                          nameController.clear();
                          emailController.clear();
                        });
                      }
                    },
                    child: const Text('Submit'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      if (selectedIndex != -1 &&
                          _formKey.currentState!.validate()) {
                        setState(() {
                          users[selectedIndex] = User(
                            name: nameController.text.trim(),
                            email: emailController.text.trim(),
                          );
                          nameController.clear();
                          emailController.clear();
                          selectedIndex = -1;
                        });
                      }
                    },
                    child: const Text('Update'),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              users.isEmpty
                  ? const Text(
                'No User entered yet..',
                style: TextStyle(fontSize: 22),
              )
                  : Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) => getRow(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              users[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(users[index].email),
          ],
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    nameController.text = users[index].name;
                    emailController.text = users[index].email;
                    selectedIndex = index;
                  });
                },
                icon: const Icon(Icons.edit),
              ),
              const SizedBox(width: 4),
              IconButton(
                onPressed: () {
                  setState(() {
                    users.removeAt(index);
                    if (selectedIndex == index) {
                      selectedIndex = -1;
                      nameController.clear();
                      emailController.clear();
                    }
                  });
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'user.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HomePage(),
//   ));
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController searchController = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   List<User> users = [];
//   List<User> filteredUsers = [];
//   int selectedIndex = -1;
//
//   @override
//   void initState() {
//     super.initState();
//     searchController.addListener(_filterUsers);
//     filteredUsers = users; // Initialize filteredUsers with all users
//   }
//
//   @override
//   void dispose() {
//     searchController.dispose();
//     nameController.dispose();
//     emailController.dispose();
//     super.dispose();
//   }
//
//   void _filterUsers() {
//     setState(() {
//       filteredUsers = users
//           .where((user) => user.name
//           .toLowerCase()
//           .contains(searchController.text.toLowerCase()))
//           .toList();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('User List'),
//         backgroundColor: Colors.redAccent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: searchController,
//               decoration: const InputDecoration(
//                 hintText: 'Search by Name',
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: nameController,
//                     decoration: const InputDecoration(
//                       hintText: 'Enter Name',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.trim().isEmpty) {
//                         return 'Enter Name';
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height: 10),
//                   TextFormField(
//                     controller: emailController,
//                     decoration: const InputDecoration(
//                       hintText: 'Enter Email',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.trim().isEmpty) {
//                         return 'Enter Email Address';
//                       }
//                       final emailRegex = RegExp(
//                           r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
//                       if (!emailRegex.hasMatch(value.trim())) {
//                         return 'Enter Valid Email Address';
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           if (_formKey.currentState!.validate()) {
//                             setState(() {
//                               users.add(User(
//                                 name: nameController.text.trim(),
//                                 email: emailController.text.trim(),
//                               ));
//                               filteredUsers = users;
//                               nameController.clear();
//                               emailController.clear();
//                             });
//                           }
//                         },
//                         child: const Text('Save'),
//                       ),
//                       if (users.isNotEmpty)
//                         ElevatedButton(
//                           onPressed: () {
//                             if (selectedIndex != -1 &&
//                                 _formKey.currentState!.validate()) {
//                               setState(() {
//                                 users[selectedIndex] = User(
//                                   name: nameController.text.trim(),
//                                   email: emailController.text.trim(),
//                                 );
//                                 filteredUsers = users;
//                                 nameController.clear();
//                                 emailController.clear();
//                                 selectedIndex = -1;
//                               });
//                             }
//                           },
//                           child: const Text('Update'),
//                         ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 10),
//             Expanded(
//               child: filteredUsers.isEmpty
//                   ? const Text(
//                 'No User entered yet..',
//                 style: TextStyle(fontSize: 22),
//               )
//                   : ListView.builder(
//                 itemCount: filteredUsers.length,
//                 itemBuilder: (context, index) => getRow(index),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget getRow(int index) {
//     return Card(
//       child: ListTile(
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               filteredUsers[index].name,
//               style: const TextStyle(fontWeight: FontWeight.bold),
//             ),
//             Text(filteredUsers[index].email),
//           ],
//         ),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   nameController.text = filteredUsers[index].name;
//                   emailController.text = filteredUsers[index].email;
//                   selectedIndex = users.indexOf(filteredUsers[index]);
//                 });
//               },
//               icon: const Icon(Icons.edit),
//             ),
//             IconButton(
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (context) => AlertDialog(
//                     title: const Text('Confirm Delete'),
//                     content: const Text(
//                         'Are you sure you want to delete this user?'),
//                     actions: [
//                       TextButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(); // Close dialog
//                         },
//                         child: const Text('Cancel'),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           setState(() {
//                             users.remove(filteredUsers[index]);
//                             filteredUsers = users;
//                             if (selectedIndex == index) {
//                               selectedIndex = -1;
//                               nameController.clear();
//                               emailController.clear();
//                             }
//                           });
//                           Navigator.of(context).pop(); // Close dialog
//                         },
//                         child: const Text('Delete'),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//               icon: const Icon(Icons.delete),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }