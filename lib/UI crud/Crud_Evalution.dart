import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrudEvalution extends StatefulWidget {
  const CrudEvalution({super.key});

  @override
  State<CrudEvalution> createState() => _CrudEvalutionState();
}

class _CrudEvalutionState extends State<CrudEvalution> {
  TextEditingController name= TextEditingController();
  TextEditingController edit= TextEditingController();
  TextEditingController search = TextEditingController();
  List<String> names=["Parmar","Mohil"];

  void addItems(){
    if(name.text.isNotEmpty){
      setState(() {
        names.add(name.text);
      });
      name.clear();
    }
  }
  void editItems(int index){
    setState(() {
      if(edit.text.isNotEmpty){
        names[index] = edit.text;
      }
    });
    edit.clear();
  }
  void deleteItem(int index){
    setState(() {
      names.removeAt(index);
    });
  }
  
  void searchItem(){
    setState(() {
      (names.contains(search.text)) ? showDialog(context: context, builder: (context){
      return AlertDialog(title: Text("User Found"),);
      }
      ): showDialog(context: context, builder: (context){
      return AlertDialog(title: Text("User Not Found"),);
      }
      );

    }
    );
    search.clear();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crud Evaluation" ,style: TextStyle(color: Colors.white), ), backgroundColor: Colors.red,),

      body: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: 'Enter Your name',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      addItems();
                    },
                    child: Text('Add'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(height: 10,),
                Expanded(
                  child: TextField(
                    controller: search,
                    decoration: InputDecoration(
                        hintText: "Search Here",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                    ),
                  ),
                ),

                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      searchItem();
                    },
                    child: Text('Seach'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(itemCount: names.length,itemBuilder: (context, index) {
              return ListTile(
                title: Text(names[index]),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: (){
                      showDialog(context: context, builder: (context) {
                        edit.text = names[index];
                        return AlertDialog(
                          title: Text("edit"),
                          content: TextField(
                            controller: edit,
                          ),
                          actions: [
                            ElevatedButton(onPressed: (){
                              editItems(index);
                              Navigator.pop(context);
                            }, child: Text("edit")),
                            ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("cancel"))
                          ],
                        );
                      },);
                    }, icon: Icon(Icons.edit)),
                    IconButton(onPressed: (){
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: Text("are you sure ??"),
                          actions: [
                            ElevatedButton(onPressed: (){
                              deleteItem(index);
                              Navigator.pop(context);
                            }, child: Text("yes")),
                            ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("no"))
                          ],
                        );
                      },);
                    }, icon: Icon(CupertinoIcons.delete))
                  ],
                ),
              );
            },),
          )

        ],
      ),
    );
  }
}
