import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/ui/widgets/group_separator.dart';

class CommonColapse extends StatelessWidget{
  ExpandableController controller = new ExpandableController(initialExpanded:true );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ExpandableNotifier(
      controller: controller,
      child:  Column(
        children: [
          ScrollOnExpand(
            child: ExpandablePanel(

              theme: ExpandableThemeData(

                  tapBodyToCollapse: true,
                  tapBodyToExpand: true

              ),

              header:GroupSeparator(
                cabang:"Expandable Panel",
              ),
              expanded: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  for (var _ in Iterable.generate(5))
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("${_}",
                          softWrap: true,
                          overflow: TextOverflow.fade,
                          style: TextStyle(color: Colors.black)),
                    ),
                ],
              ),
              collapsed:Container(

              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(

                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }

}