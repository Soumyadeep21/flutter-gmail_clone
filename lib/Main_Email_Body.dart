import 'package:flutter/material.dart';
import 'Email_Model.dart';

class mainEmailBody extends StatefulWidget {
  @override
  _mainEmailBodyState createState() => _mainEmailBodyState();
}

class _mainEmailBodyState extends State<mainEmailBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: ListView.separated(
          separatorBuilder: (context,i){
            return Divider();
          },
          itemCount: model.length,
          itemBuilder: (context,i){
            return ListTile(
              leading: CircleAvatar(
                child: Text(model[i].name[0],style: TextStyle(fontSize: 20),),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      model[i].name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                  ),
                  Text(
                      model[i].subject,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),
                  ),
                  Text(
                    model[i].full,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              trailing: Column(
                children: <Widget>[
                  Text(model[i].time),
                  IconButton(
                      icon: model[i].favourite?
                      Icon(Icons.star,color: Colors.yellow,):
                      Icon(Icons.star_border),
                      onPressed: (){
                        setState(() {
                          if(model[i].favourite)
                            model[i].favourite = false;
                          else
                            model[i].favourite = true;
                        });
                      }
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}
