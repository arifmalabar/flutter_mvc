import 'package:flutter/material.dart';
class SearchWidget extends StatelessWidget{
  final TextEditingController editingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        borderRadius: BorderRadius.all(
            Radius.circular(25.0)
        ),
        elevation: 2.0,
        child: Container(
          height: 45.0,
          margin: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.normal
                    ),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Theme.of(context).accentColor
                      ),
                      hintText: 'Masukan Keyword',
                      hintStyle: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.normal
                      ),
                      border: InputBorder.none
                    ),
                    onSubmitted: (query) => onSubmited(query, context),
                    controller: editingController,
                  ),
              ),
          ]
          ),
        ),
      ),
    );
  }

  onSubmited(String query, BuildContext context) {
    if(query.isEmpty) return;
  }

}