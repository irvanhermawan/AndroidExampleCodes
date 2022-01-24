import 'package:flutter/material.dart';
import 'package:projectscoid/views/Chat/blocs/blocs.dart';
import 'package:projectscoid/views/Chat/models/models.dart';
import 'dart:ui' as ui;
import 'dart:convert';
import 'dart:io';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:projectscoid/app/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:koukicons/addApp.dart';
import 'package:koukicons/moneyTransfer.dart';
import 'package:koukicons/camcorderPro.dart';
import 'package:koukicons/databaseNetwork.dart';
import 'package:koukicons/liveNews.dart';
import 'package:koukicons/electronics.dart';
import 'package:koukicons/galleryX.dart';
import 'package:koukicons/multipleDevices.dart';
import 'package:koukicons/pic2.dart';
import 'package:koukicons/phoneApps.dart';
import 'package:koukicons/Network2.dart';
import 'package:koukicons/bullish.dart';
import 'package:koukicons/newspaper.dart';
import 'package:koukicons/notebook.dart';
import 'package:koukicons/business.dart';
import 'package:koukicons/readingEbook.dart';
import 'package:koukicons/editDoc.dart';
import 'package:koukicons/photoReel.dart';
import 'package:koukicons/news.dart';
import 'package:koukicons/briefcase.dart';
import 'package:koukicons/files.dart';
import 'package:koukicons/camera2.dart';






class ReplyInput extends StatefulWidget {
  final TextEditingController textEditingController;
  // final ZefyrController textEditingController;
  /// Zefyr editor like any other input field requires a focus node.
  final FocusNode fNode;
  final Function onPressed;
  final Function onChanged;
  final Function onTextChange;
  final Function onAttach;
  final Function onPic;
  final Function onImage;
  final bool isEmoji;
  final Function onShowKB;
  final Function onInsertEmoji;
  ReplyInput(
      {@required this.textEditingController,
        this.fNode,
        this.onPressed,
        this.onChanged,
        this.onTextChange,
        this.onAttach,
        this.onPic,
        this.onImage,
        this.isEmoji,
        this.onShowKB,
        this.onInsertEmoji});

  @override
  _ReplyInputState createState() => _ReplyInputState();
}

class _ReplyInputState extends State<ReplyInput> {
  bool darkMode = false;
  @override
  void initState() {
    super.initState();
    // widget.chatBloc.getQuickMenuItems();
  }

  @override
  Widget build(BuildContext context) {
    var space = 4/7 * MediaQuery.of(context).size.width;
    final themeManager =  Provider.of<ThemeManager>(context);
    themeManager.themeMode == ThemeMode.dark? darkMode = true : darkMode = false;

    return Container(
      child:
      Card(
          borderOnForeground: false,
          elevation: 2,
          shadowColor: Colors.black,
          child:



          Column(
            children: <Widget>[

              //  Divider(
              //    thickness: 0.5,
              //  ),

              Expanded(
                // flex: 5,
                child:
                Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                          width: 26,
                          child: widget.isEmoji? Icon(LineAwesomeIcons.keyboard_o, size: 22,color: Colors.black): Icon(LineAwesomeIcons.smile_o, size: 22, color: Colors.black)
                      ),
                      onTap: widget.onInsertEmoji,
                    ),



                    Container(width: 1, height: 35,color: Colors.grey[300], padding: EdgeInsets.only(top: 10),),
                    Expanded(
                      child:
                      TextField(
                        //scrollPadding:
                        //expands: true,
                        //scrollPadding: EdgeInsets.only(right: 0.5),
                        controller: widget.textEditingController,
                        focusNode: widget.fNode,
                        //  autofocus: true,
                        //style: TextStyle(fontSize: 14, fontFamily: 'NotoColorEmoji', wordSpacing: -8),
                        style: TextStyle(fontSize: 14, color:  darkMode ? Colors.black : Colors.black ),
                        maxLines: 4,
                        minLines: 1,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white60,
                            border: InputBorder.none,
                            hintText: 'Send a message to this thread'),
                        onTap: widget.onChanged ,
                        onChanged: widget.onTextChange ,
                      ),

                    ),

                    GestureDetector(
                        child: Container(
                          width: 26,
                          child: Icon(Icons.attach_file, size: 22,color: Colors.black),
                        ),
                        onTap:(){
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 250,
                                // color: Colors.amber,
                                child: Center(
                                    child:
                                    GridView.count(
                                        crossAxisCount: 3,
                                        shrinkWrap: true,
                                        padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                                        physics: new NeverScrollableScrollPhysics(),
                                        children: <Widget>[
                                          Container(
                                            //  color:  CurrentTheme.BackgroundColor,
                                            color : Colors.transparent,
                                            height: 80, // tambahkan property berikut
                                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                            child: Center(
                                              child:
                                              InkWell(
                                                onTap: widget.onImage,
                                                child: Column(
                                                  children: <Widget>[

                                                    KoukiconsGalleryX(height : 60, width : 60),


                                                    Padding(padding: EdgeInsets.only(top: 5.0)),
                                                    Text(
                                                      'Galerry',
                                                      maxLines: 2,
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        fontFamily: "Sans",
                                                        fontSize: 14.0,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    )

                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            //  color:  CurrentTheme.BackgroundColor,
                                            color : Colors.transparent,
                                            height: 80, // tambahkan property berikut
                                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                            child: Center(
                                              child:
                                              InkWell(
                                                onTap: widget.onPic,
                                                child: Column(
                                                  children: <Widget>[
                                                    KoukiconsCamera2(height: 55, width: 55),
                                                    Padding(padding: EdgeInsets.only(top: 5.0)),
                                                    Text(
                                                      'Camera',
                                                      maxLines: 2,
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontFamily: "Sans",
                                                        fontSize: 14.0,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            //  color:  CurrentTheme.BackgroundColor,
                                            color : Colors.transparent,
                                            height: 80, // tambahkan property berikut
                                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                            child: Center(
                                              child:
                                              InkWell(
                                                onTap:
                                                widget.onAttach,

                                                // Navigator.of(context).pop();

                                                child: Column(
                                                  children: <Widget>[

                                                    KoukiconsFiles(width: 60, height: 60),



                                                    Padding(padding: EdgeInsets.only(top: 5.0)),
                                                    Text(
                                                      'File',
                                                      maxLines: 2,
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(

                                                        fontFamily: "Sans",
                                                        fontSize: 14.0,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    )

                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),


                                        ]
                                    )
                                ),
                              );
                            },
                          );
                        }
                      // widget.onAttach,
                    ),


                    IconButton(
                      color: Colors.black38,
                      padding: EdgeInsets.only( right:0.0, left: 0),
                      disabledColor: Theme.of(context).primaryColorDark,
                      iconSize: 26,
                      icon: Icon(LineAwesomeIcons.paper_plane_o, color: Colors.black ),
                      onPressed: widget.onPressed,
                    ),



                  ],
                ),


              ),


              // ),

            ],
          )

      ),


    );


  }


}
