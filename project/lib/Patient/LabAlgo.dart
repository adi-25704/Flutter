import 'package:flutter/material.dart';
//import 'package:project/Hospital%20Registration/loginview_H.dart';
//import 'package:project/loginstate.dart';



class ListItemWidget extends StatelessWidget{
  final LabQueue labq;
  final Animation<double> animation;
  final VoidCallback? onClicked;

  const ListItemWidget({
        required this.labq,
        required this.animation,
        required this.onClicked,
        Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset.zero,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.bounceOut)),
        child: builditem(),
    );

  Widget builditem() => Container(
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.cyan,
    ),
    child: ListTile(
      contentPadding: const EdgeInsets.all(16),
      title: Text(
        labq.PatName,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.check_box, color: Colors.white, size: 32),
        onPressed: onClicked,
      ),
    ),
  );
  



}
class MyPage extends StatefulWidget
{
  const MyPage({super.key});

  @override
  _AnimatedList createState() => _AnimatedList();
}


class _AnimatedList extends State<MyPage> {
      final listkey = GlobalKey<AnimatedListState>();
      final List<LabQueue> labq =List.empty();
      @override
  Widget build(BuildContext context){ return Scaffold(
          appBar: AppBar(
            title: const Text('Lab Report Queue'),
            centerTitle: true,
            backgroundColor: Colors.cyan,
          ),

          body: AnimatedList(
            key: listkey,
            initialItemCount: labq.length,
            itemBuilder: (context, index, animation) => ListItemWidget(
              labq: labq[index],
              animation: animation,
              onClicked: () => removeItem(index),)
            ),

            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: (){}),
      );}

void removeItem(int index) {
  final removedItem = labq[index];
  labq.removeAt(index);
  listkey.currentState!.removeItem(
    index,
    (context, animation) => ListItemWidget(
    labq: removedItem,
    animation: animation,
    onClicked:(){},
    ),
    duration: const Duration(milliseconds: 600),
  );
}      

}
class LabQueue {
  final String PatName;
  final int Critical;

  const LabQueue({
      required this.PatName,
      required this.Critical
  });
  }

// int Severe(int severity, bool caseStat) {
//   return caseStat ? 2 : severity;
// }

// List<dynamic> LabAlgo(int n, List<dynamic> severity, List<bool> caseStat) {
//   final List LabPriority = <dynamic>[0, 0];
//   var temp;
//   for (var i = 0; i < n; i++) {
//     temp = Severe(severity[i], caseStat[i]);
//     LabPriority.add(temp);
//   }

//   LabPriority.sort();
//   LabPriority.reversed;
//   return LabPriority;
// }

// void LabTesting() {}