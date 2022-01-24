import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectscoid/core/AppProvider.dart';
import 'package:projectscoid/core/components/helpers/action_helpers.dart';
import 'package:projectscoid/controllers/controllers.dart';
import 'package:projectscoid/views/components/index.dart';
//import 'package:projectscoid/i18n/projectscoid_strings.dart';
import 'package:projectscoid/models/model.dart';
import 'package:projectscoid/app/Env.dart';
import 'package:sprintf/sprintf.dart';
import 'package:flutter_html/flutter_html.dart';
import 'dart:async';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:projectscoid/core/components/helpers/string_helpers.dart';
import 'user_bids_list.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:projectscoid/core/components/helpers/color_helpers.dart';
import 'package:projectscoid/views/Chat/blocs/chat_bloc.dart';

/** AUTOGENERATE OFF **/
class  PublicBrowseProjectsView extends StatefulWidget {
  static const String PATH = '/public/browse_projects/view/:id/:title';
  final String id ;
  final String title;
  ChatBloc cb;
  PublicBrowseProjectsView({Key key, this.id, this.title, this.cb}) : super(key: key);
  @override
   PublicBrowseProjectsViewState createState() =>  PublicBrowseProjectsViewState();
}

class  PublicBrowseProjectsViewState extends State< PublicBrowseProjectsView>{
  String getPath = Env.value.baseUrl + '/public/browse_projects/view/%s/%s';
  
  final double _appBarHeight = 230.0;
  AppBarBehavior _appBarBehavior = AppBarBehavior.pinned;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
   BrowseProjectsController browse_projects;
  final formKey = GlobalKey<FormState>();
 var controller =  ScrollController() ;
  final _scrollThreshold = 200.0;
  double lastScroll = 0;
  bool scrollUp = false;
  var isLoading = true;
  String idHash = '';
  String userid;
 // var viewBrowseProjects;
  BrowseProjectsViewModel model;
  PastProjectsViewModel model1;
  bool isPastProject = false;
  AccountController accountController;
  bool account = true;
  String strValue = '';
  PublicBrowseProjectsViewState(){
    controller.addListener(_onScroll);
  }

  @override
  initState(){
    super.initState();
    // controller = ScrollController();
  }
  void _onWidgetDidBuild(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
    // next = false;
  }


  fetchData2(SubModelController browse_projects, BuildContext context)async {
    String getPath = Env.value.baseUrl + '/public/past_projects/view/${widget.id}/${widget.title}';
    browse_projects = new  SubModelController(AppProvider.getApplication(context),
        getPath,
        null);
    if (this.model1 == null) {
      final hash = browse_projects.getHash();
      hash.then((value) {
        this.idHash = value;
      });
      final future = browse_projects.getData();

      future.then((value) {
        Map<String, dynamic> json = value;
        this.model1 = PastProjectsViewModel(json);


        setState(() {
          isLoading = false;
        });
        // this.model1 = value;
      }).catchError((Error) {
        _onWidgetDidBuild(() {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  'Oopps, terjadi kendala, mohon tunggu beberapa saat lagi!'),
              backgroundColor: Colors.red,
            ),
          );
        }
        );
      });
    }

  }



  fetchData(SubModelController browse_projects, BuildContext context)async {
    String getPath = Env.value.baseUrl + '/public/browse_projects/view/${widget.id}/${widget.title}';
    browse_projects = new  SubModelController(AppProvider.getApplication(context),
        getPath,
        null);
    if (this.model == null) {
      final hash = browse_projects.getHash();
      hash.then((value) {
        this.idHash = value;
      });
      final future = browse_projects.getData();

      future.then((value) {
        //strValue = value;
        // Map<String, dynamic> json = value;

        this.model = BrowseProjectsViewModel(value);
        if(this.model.model.model.project_status_id != 3){
          Map<String, dynamic> json = value;
          this.model1 = PastProjectsViewModel(json);
          isPastProject = true;
          print('PastProjectsViewModel1');
        }
        print('PastProjectsViewModel');
        setState(() {
          isLoading = false;
        });

        // this.model = BrowseProjectsViewModel(json);
        // this.model = value;
      }).catchError((Error) {
        isPastProject = true;
        print('PastProjectsViewModel3');
       // fetchData2(browse_projects, context);
      });
    }

  }


  @override
  Widget build(BuildContext context) {
    bool _hasSubModel = false;
    int modelCount = 0;
    String getSubPath = '';
    bool _dialVisible = true;
    SubModelController projects;

    print('PastProjectsViewModel4');

    fetchData(projects, context);
    accountController = new AccountController(AppProvider.getApplication(context),
        AppAction.view   );
    List listAccount = [];
    final future = accountController.getAccount();
    future.then((val){

      listAccount.addAll(val);
      if(listAccount.length == 0){
        account = false;
      }else{
        account = true;
        userid = val.asMap()[0]['user_hash'];
      }

    });
    _hasSubModel	= true;
    modelCount = modelCount + 1;
    String getSubPathUserBids = Env.value.baseUrl + '/public/browse_projects/user_bids_list/'+widget.id+'/'+widget.title + '?';
    // model id project
    _hasSubModel	= false;
    if(_hasSubModel){



      return new DefaultTabController(
        length: modelCount + 1,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: widget.title),
                Tab(text: 'UserBids'),
              ],
            ),
            title: Text(widget.title),
          ),
          body: isLoading?Center(
              child:CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(
                    Colors.green),
              ))
              : TabBarView(
            children: [
              PublicBrowseProjectsSubView(id : widget.id, title : widget.title, model:this.model),
              UserBidsList(id : widget.id, title : widget.title, url : getSubPathUserBids),
            ],
          ),

        ),

      );

    }else{


      return Scaffold(
        /* appBar: AppBar(
			//title: Text(widget.title.replaceAll('-', '  ')),
		  ),  */

        appBar: isLoading?  AppBar(title: Text('', style : TextStyle( color: Colors.white, )), iconTheme: IconThemeData(

          color: Colors.white, //change your color here
        ),)
            : scrollUp ? null : isPastProject?this.model1.appBar(context, idHash): this.model.appBar(context, idHash),



        body:isLoading?
        Center(
            child:CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(
                  Colors.green),
            ))
            :Form(
            key: formKey,
            child: isPastProject? this.model1.view(context, controller, account) : this.model.view1(context, controller, account, this, userid, widget.cb)
        ),
        //floatingActionButton: isLoading? null :  this.model.Buttons(context, _dialVisible)
        // floatingActionButton: isLoading? null : this.model.model.buttons.length == 0? null: this.model.Buttons(context, _dialVisible, formKey, controller,browse_projects,  this, Env.value.baseUrl, widget.id, widget.title, account)

      );

    }
  }

  void _onScroll() {
    final maxScroll = controller.position.maxScrollExtent;
    final currentScroll = controller.position.pixels;
    if(lastScroll > currentScroll){
			setState(() {
				scrollUp = false;
			});
    }else{
			setState(() {
				scrollUp = true;
			});
    }
    lastScroll = currentScroll;

	
	
  }

  @override
  void dispose() {
    super.dispose();
  }
}




class  PublicBrowseProjectsSubView extends StatefulWidget {
  static const String PATH = '/public/browse_projects/view/:id/:title';
  final String id ;
  final String title;
  var model;
  PublicBrowseProjectsSubView({Key key, this.id, this.title, this.model}) : super(key: key);
  @override
   PublicBrowseProjectsSubViewState createState() =>  PublicBrowseProjectsSubViewState();
}

class  PublicBrowseProjectsSubViewState extends State< PublicBrowseProjectsSubView>{

 BrowseProjectsController browse_projects;
  final formKey = GlobalKey<FormState>();
  ScrollController controller;
  var isLoading = true;
 // var viewBrowseProjects;
  AccountController accountController;
  bool account = true;

  @override
  initState(){
    super.initState();
    controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {

    bool _dialVisible = true;

	  	  return Scaffold(
		  appBar: null,
		   body:Form(
			  key: formKey,
			  child: widget.model.view(context, controller, account)
		  ),	  
			 floatingActionButton: isLoading? null :  widget.model.Buttons(context, _dialVisible, formKey, controller,browse_projects,  this, Env.value.baseUrl, widget.id, widget.title, account)
			);  

	  				
  }

  @override
  void dispose() {
    super.dispose();
  }
}


