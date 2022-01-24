import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:projectscoid/views/route.dart';
import 'package:projectscoid/app/projectscoid.dart';
import 'package:projectscoid/app/signin.dart';
import 'package:projectscoid/app/root.dart';
import 'package:projectscoid/app/splashpage.dart';
import 'package:projectscoid/app/register.dart';
import 'package:projectscoid/app/intro.dart';
import 'package:projectscoid/app/setting.dart';




var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return  new Root();
    });

var loginHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String login = params["login"]?.first;
      bool isLogin = false;
      if(login == '1'){
        isLogin = true;
      }
      return  new Login(application: context, isLogin: isLogin);
    });

var registerHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return  new Register();
    });

var introHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return  new IntroScreen();
    });

var settingHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return  new Setting();
    });


var splashHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return  new SplashPage();
    });

var puProjectscoidHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return  new Projectscoid();
    });



	

var viewHomeUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserHomeView( id : id,
          title:  title );
    });

var viewHomePublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicHomeView();
    });


var listingHomeUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return  new UserHomeListing();
    });
	

var viewPagePublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String title = params["title"]?.first;
      return new PublicPageView(
          title:  title );
    });
	
//-------------------------------------------------------------------	   
//-------------------------------------------------------------------    
	
	

var editTestPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicTestEdit( id : id,
                             title:  title );
    });
	
var addTestPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicTestAdd();
    });	

var viewTestPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicTestView( id : id,
          title:  title );
    });

var listingTestPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicTestListing(id : id);
    });
	

var editTestimonialPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicTestimonialEdit( id : id,
                             title:  title );
    });
	
var addTestimonialPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicTestimonialAdd();
    });	

var viewTestimonialPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicTestimonialView( id : id,
          title:  title );
    });

var listingTestimonialPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicTestimonialListing(id : id);
    });
	

var editCeritaSuksesPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicCeritaSuksesEdit( id : id,
                             title:  title );
    });
	
var addCeritaSuksesPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicCeritaSuksesAdd();
    });	

var viewCeritaSuksesPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicCeritaSuksesView( id : id,
          title:  title );
    });

var listingCeritaSuksesPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicCeritaSuksesListing(id : id);
    });
	

var editTipsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicTipsEdit( id : id,
                             title:  title );
    });
	
var addTipsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicTipsAdd();
    });	

var viewTipsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicTipsView( id : id,
          title:  title );
    });

var listingTipsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicTipsListing(id : id);
    });
	

var editBrowseProjectsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicBrowseProjectsEdit( id : id,
                             title:  title );
    });
	
var addBrowseProjectsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicBrowseProjectsAdd();
    });	

var viewBrowseProjectsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicBrowseProjectsView( id : id,
          title:  title );
    });

var listingBrowseProjectsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicBrowseProjectsListing(id : id);
    });
	

var PlaceNewBidBrowseProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PlaceNewBidBrowseProjects( id : id,
          title:  title );	 
    });


var AskOwnerBrowseProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new AskOwnerBrowseProjects( id : id,
          title:  title );	 
    });



var GuestCreateProjectBrowseProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new GuestCreateProjectBrowseProjects( id : id,
          title:  title );	 
    });



var editPastProjectsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicPastProjectsEdit( id : id,
                             title:  title );
    });
	
var addPastProjectsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicPastProjectsAdd();
    });	

var viewPastProjectsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicPastProjectsView( id : id,
          title:  title );
    });

var listingPastProjectsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicPastProjectsListing(id : id);
    });
	

var editNewUserPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicNewUserEdit( id : id,
                             title:  title );
    });
	
var addNewUserPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicNewUserAdd();
    });	

var viewNewUserPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicNewUserView( id : id,
          title:  title );
    });

var listingNewUserPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicNewUserListing(id : id);
    });
	
var RegisterNewUserHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new RegisterNewUser( id : id,
          title:  title );	 
    });


var VerifyNewUserHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new VerifyNewUser( id : id,
          title:  title );	 
    });



var editProgramPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicProgramEdit( id : id,
                             title:  title );
    });
	
var addProgramPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicProgramAdd();
    });	

var viewProgramPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicProgramView( id : id,
          title:  title );
    });

var listingProgramPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicProgramListing(id : id);
    });
	
var PromoProgramHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PromoProgram( id : id,
          title:  title );	 
    });



var editExistingUserPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicExistingUserEdit( id : id,
                             title:  title );
    });
	
var addExistingUserPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicExistingUserAdd();
    });	

var viewExistingUserPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicExistingUserView( id : id,
          title:  title );
    });

var listingExistingUserPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicExistingUserListing(id : id);
    });
	
var ForgotPasswordExistingUserHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ForgotPasswordExistingUser( id : id,
          title:  title );	 
    });


var ResetPasswordExistingUserHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ResetPasswordExistingUser( id : id,
          title:  title );	 
    });



var editSupportPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicSupportEdit( id : id,
                             title:  title );
    });
	
var addSupportPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicSupportAdd();
    });	

var viewSupportPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicSupportView( id : id,
          title:  title );
    });

var listingSupportPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicSupportListing(id : id);
    });
	
var ContactFormSupportHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ContactFormSupport( id : id,
          title:  title );	 
    });



var editBrowseServicesPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicBrowseServicesEdit( id : id,
                             title:  title );
    });
	
var addBrowseServicesPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicBrowseServicesAdd();
    });	

var viewBrowseServicesPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicBrowseServicesView( id : id,
          title:  title );
    });

var listingBrowseServicesPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicBrowseServicesListing(id : id);
    });
	


var PlaceOrderBrowseServicesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PlaceOrderBrowseServices( id : id,
          title:  title );	 
    });



var editBrowseUsersPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicBrowseUsersEdit( id : id,
                             title:  title );
    });
	
var addBrowseUsersPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicBrowseUsersAdd();
    });	

var viewBrowseUsersPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicBrowseUsersView( id : id,
          title:  title );
    });

var listingBrowseUsersPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicBrowseUsersListing(id : id);
    });
	
var InviteToBidBrowseUsersHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new InviteToBidBrowseUsers( id : id,
          title:  title );	 
    });


var HireMeBrowseUsersHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new HireMeBrowseUsers( id : id,
          title:  title );	 
    });




var editBrowseProductsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicBrowseProductsEdit( id : id,
                             title:  title );
    });
	
var addBrowseProductsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicBrowseProductsAdd();
    });	

var viewBrowseProductsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicBrowseProductsView( id : id,
          title:  title );
    });

var listingBrowseProductsPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicBrowseProductsListing(id : id);
    });
	


var AddToCartBrowseProductsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new AddToCartBrowseProducts( id : id,
          title:  title );	 
    });



var editCartUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserCartEdit( id : id,
                             title:  title );
    });
	
var addCartUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserCartAdd();
    });	

var viewCartUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserCartView( id : id,
          title:  title );
    });

var listingCartUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserCartListing(id : id);
    });
	
var EmptyCartCartHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new EmptyCartCart( id : id,
          title:  title );	 
    });


var ApplyCouponCartHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ApplyCouponCart( id : id,
          title:  title );	 
    });




var editCheckoutUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserCheckoutEdit( id : id,
                             title:  title );
    });
	
var addCheckoutUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserCheckoutAdd();
    });	

var viewCheckoutUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserCheckoutView( id : id,
          title:  title );
    });

var listingCheckoutUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserCheckoutListing(id : id);
    });
	
var PayWithAvailableBalanceCheckoutHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PayWithAvailableBalanceCheckout( id : id,
          title:  title );	 
    });


var PayViaBankTransferCheckoutHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PayViaBankTransferCheckout( id : id,
          title:  title );	 
    });


var PayWithCreditCardCheckoutHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PayWithCreditCardCheckout( id : id,
          title:  title );	 
    });


var PayWithCimbClicksCheckoutHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PayWithCimbClicksCheckout( id : id,
          title:  title );	 
    });


var PayWithBcaKlikpayCheckoutHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PayWithBcaKlikpayCheckout( id : id,
          title:  title );	 
    });


var PayWithMandiriClickpayCheckoutHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PayWithMandiriClickpayCheckout( id : id,
          title:  title );	 
    });


var PayWithQrisCheckoutHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PayWithQrisCheckout( id : id,
          title:  title );	 
    });


var PayWithPaypalCheckoutHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PayWithPaypalCheckout( id : id,
          title:  title );	 
    });



var editBlogPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicBlogEdit( id : id,
                             title:  title );
    });
	
var addBlogPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicBlogAdd();
    });	

var viewBlogPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicBlogView( id : id,
          title:  title );
    });

var listingBlogPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicBlogListing(id : id);
    });
	

var editMyProjectsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyProjectsEdit( id : id,
                             title:  title );
    });
	
var addMyProjectsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyProjectsAdd();
    });	

var viewMyProjectsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserMyProjectsView( id : id,
          title:  title );
    });

var listingMyProjectsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyProjectsListing(id : id);
    });
	
var BumpUpMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new BumpUpMyProjects( id : id,
          title:  title );	 
    });


var BroadcastMessageMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new BroadcastMessageMyProjects( id : id,
          title:  title );	 
    });


var ShowBidsMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ShowBidsMyProjects( id : id,
          title:  title );	 
    });


var ShowThreadMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ShowThreadMyProjects( id : id,
          title:  title );	 
    });


var ShowFilesMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ShowFilesMyProjects( id : id,
          title:  title );	 
    });


var ShowConversationMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      String title = params["title"]?.first;
	  String id1 = params["id1"]?.first;
      return new ShowConversationMyProjects( id : id,
          title:  title, id1: id1);	 
    });


var CreateProjectMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new CreateProjectMyProjects( id : id,
          title:  title );	 
    });


var EditDraftMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new EditDraftMyProjects( id : id,
          title:  title );	 
    });


var PublishProjectMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PublishProjectMyProjects( id : id,
          title:  title );	 
    });


var CancelProjectMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new CancelProjectMyProjects( id : id,
          title:  title );	 
    });


var AcceptOrRejectWorkMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new AcceptOrRejectWorkMyProjects( id : id,
          title:  title );	 
    });


var RateWorkerMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new RateWorkerMyProjects( id : id,
          title:  title );	 
    });


var ReportProgressMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ReportProgressMyProjects( id : id,
          title:  title );	 
    });


var WeeklyReportMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new WeeklyReportMyProjects( id : id,
          title:  title );	 
    });


var ReportDoneMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ReportDoneMyProjects( id : id,
          title:  title );	 
    });


var RateOwnerMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new RateOwnerMyProjects( id : id,
          title:  title );	 
    });


var FileArbitrationMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new FileArbitrationMyProjects( id : id,
          title:  title );	 
    });


var NewOfferMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new NewOfferMyProjects( id : id,
          title:  title );	 
    });


var AcceptOfferMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new AcceptOfferMyProjects( id : id,
          title:  title );	 
    });


var RespondArbitrationMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new RespondArbitrationMyProjects( id : id,
          title:  title );	 
    });


var CancelArbitrationMyProjectsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new CancelArbitrationMyProjects( id : id,
          title:  title );	 
    });



var editMyBidsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyBidsEdit( id : id,
                             title:  title );
    });
	
var addMyBidsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyBidsAdd();
    });	

var viewMyBidsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserMyBidsView( id : id,
          title:  title );
    });

var listingMyBidsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyBidsListing(id : id);
    });
	
var ShowConversationMyBidsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      String title = params["title"]?.first;
	  String id1 = params["id1"]?.first;
      return new ShowConversationMyBids( id : id,
          title:  title, id1: id1);	 
    });



var CancelBidMyBidsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new CancelBidMyBids( id : id,
          title:  title );	 
    });



var editMyProductsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyProductsEdit( id : id,
                             title:  title );
    });
	
var addMyProductsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyProductsAdd();
    });	

var viewMyProductsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserMyProductsView( id : id,
          title:  title );
    });

var listingMyProductsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyProductsListing(id : id);
    });
	

var SalesMyProductsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new SalesMyProducts( id : id,
          title:  title );	 
    });


var CommentsMyProductsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new CommentsMyProducts( id : id,
          title:  title );	 
    });


var AddNewProductMyProductsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new AddNewProductMyProducts( id : id,
          title:  title );	 
    });


var PublishProductMyProductsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PublishProductMyProducts( id : id,
          title:  title );	 
    });


var EditProductMyProductsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new EditProductMyProducts( id : id,
          title:  title );	 
    });


var BumpUpMyProductsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new BumpUpMyProducts( id : id,
          title:  title );	 
    });


var ScreenshotsMyProductsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ScreenshotsMyProducts( id : id,
          title:  title );	 
    });


var UnlistMyProductsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new UnlistMyProducts( id : id,
          title:  title );	 
    });


var ReactivateProductMyProductsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ReactivateProductMyProducts( id : id,
          title:  title );	 
    });



var editMyServicesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyServicesEdit( id : id,
                             title:  title );
    });
	
var addMyServicesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyServicesAdd();
    });	

var viewMyServicesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserMyServicesView( id : id,
          title:  title );
    });

var listingMyServicesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyServicesListing(id : id);
    });
	

var SalesMyServicesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new SalesMyServices( id : id,
          title:  title );	 
    });


var CommentsMyServicesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new CommentsMyServices( id : id,
          title:  title );	 
    });


var AddNewServiceMyServicesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new AddNewServiceMyServices( id : id,
          title:  title );	 
    });


var PublishServiceMyServicesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PublishServiceMyServices( id : id,
          title:  title );	 
    });


var BumpUpMyServicesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new BumpUpMyServices( id : id,
          title:  title );	 
    });


var EditServiceMyServicesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new EditServiceMyServices( id : id,
          title:  title );	 
    });


var ScreenshotsMyServicesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ScreenshotsMyServices( id : id,
          title:  title );	 
    });


var UnlistMyServicesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new UnlistMyServices( id : id,
          title:  title );	 
    });


var ReactivateServiceMyServicesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ReactivateServiceMyServices( id : id,
          title:  title );	 
    });



var editMySalesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMySalesEdit( id : id,
                             title:  title );
    });
	
var addMySalesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMySalesAdd();
    });	

var viewMySalesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserMySalesView( id : id,
          title:  title );
    });

var listingMySalesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMySalesListing(id : id);
    });
    var indexMySalesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMySalesIndex(id : id);
    });
	

var editMyOrdersUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyOrdersEdit( id : id,
                             title:  title );
    });
	
var addMyOrdersUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyOrdersAdd();
    });	

var viewMyOrdersUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserMyOrdersView( id : id,
          title:  title );
    });

var listingMyOrdersUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyOrdersListing(id : id);
    });
    var indexMyOrdersUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyOrdersIndex(id : id);
    });
	
var ConfirmPaymentMyOrdersHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ConfirmPaymentMyOrders( id : id,
          title:  title );	 
    });



var editMyPurchasesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyPurchasesEdit( id : id,
                             title:  title );
    });
	
var addMyPurchasesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyPurchasesAdd();
    });	

var viewMyPurchasesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserMyPurchasesView( id : id,
          title:  title );
    });

var listingMyPurchasesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyPurchasesListing(id : id);
    });
    var indexMyPurchasesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyPurchasesIndex(id : id);
    });
	
var DownloadMyPurchasesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new DownloadMyPurchases( id : id,
          title:  title );	 
    });


var RateProductMyPurchasesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new RateProductMyPurchases( id : id,
          title:  title );	 
    });



var editMyReferalsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyReferalsEdit( id : id,
                             title:  title );
    });
	
var addMyReferalsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyReferalsAdd();
    });	

var viewMyReferalsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	      return new UserMyReferalsView();
    });

var listingMyReferalsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyReferalsListing(id : id);
    });
	

var editMyFinanceUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyFinanceEdit( id : id,
                             title:  title );
    });
	
var addMyFinanceUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyFinanceAdd();
    });	

var viewMyFinanceUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	      return new UserMyFinanceView();
    });

var listingMyFinanceUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyFinanceListing(id : id);
    });
	
var ChangePaymentSettingsMyFinanceHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ChangePaymentSettingsMyFinance( id : id,
          title:  title );	 
    });


var WithdrawPaymentMyFinanceHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new WithdrawPaymentMyFinance( id : id,
          title:  title );	 
    });


var DepositBalanceMyFinanceHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new DepositBalanceMyFinance( id : id,
          title:  title );	 
    });



var editMyPointsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyPointsEdit( id : id,
                             title:  title );
    });
	
var addMyPointsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyPointsAdd();
    });	

var viewMyPointsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	      return new UserMyPointsView();
    });

var listingMyPointsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyPointsListing(id : id);
    });
	

var editMyProfileUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyProfileEdit( id : id,
                             title:  title );
    });
	
var addMyProfileUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyProfileAdd();
    });	

var viewMyProfileUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	      return new UserMyProfileView();
    });

var listingMyProfileUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyProfileListing(id : id);
    });
	

var EditProfileMyProfileHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new EditProfileMyProfile( id : id,
          title:  title );	 
    });


var PortofolioMyProfileHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new PortofolioMyProfile( id : id,
          title:  title );	 
    });


var ChangePasswordMyProfileHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ChangePasswordMyProfile( id : id,
          title:  title );	 
    });


var ChangeEmailMyProfileHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ChangeEmailMyProfile( id : id,
          title:  title );	 
    });


var ChangeHandphoneMyProfileHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new ChangeHandphoneMyProfile( id : id,
          title:  title );	 
    });



var editKelurahanPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicKelurahanEdit( id : id,
                             title:  title );
    });
	
var addKelurahanPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new PublicKelurahanAdd();
    });	

var viewKelurahanPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new PublicKelurahanView( id : id,
          title:  title );
    });

var listingKelurahanPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new PublicKelurahanListing(id : id);
    });
	

var editMyPortofolioUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyPortofolioEdit( id : id,
                             title:  title );
    });
	
var addMyPortofolioUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyPortofolioAdd();
    });	

var viewMyPortofolioUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserMyPortofolioView( id : id,
          title:  title );
    });

var listingMyPortofolioUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyPortofolioListing(id : id);
    });
	
var AddPortofolioMyPortofolioHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new AddPortofolioMyPortofolio( id : id,
          title:  title );	 
    });


var EditMyPortofolioHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new EditMyPortofolio( id : id,
          title:  title );	 
    });



var editMyBookmarksUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyBookmarksEdit( id : id,
                             title:  title );
    });
	
var addMyBookmarksUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyBookmarksAdd();
    });	

var viewMyBookmarksUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserMyBookmarksView( id : id,
          title:  title );
    });

var listingMyBookmarksUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyBookmarksListing(id : id);
    });
	

var editMyBuddiesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      return new UserMyBuddiesEdit( id : id,
                             title:  title );
    });
	
var addMyBuddiesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new UserMyBuddiesAdd();
    });	

var viewMyBuddiesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		  String id = params["id"]?.first;
          String title = params["title"]?.first;
          return new UserMyBuddiesView( id : id,
          title:  title );
    });

var listingMyBuddiesUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
      return  new UserMyBuddiesListing(id : id);
    });
	
var RemoveMyBuddiesHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = '';
	  if(params["id"]?.first == ''){
	  id = '';
	  }else{
	  id = params["id"]?.first;
	  }
      String title = params["title"]?.first;
	  if(params["title"]?.first == ''){
	  title = '';
	  }else{
	  title = params["title"]?.first;
	  }
      return new RemoveMyBuddies( id : id,
          title:  title );	 
    });



	
    
    
//-------------------------------------------------------------------	
//-------------------------------------------------------------------	

var MyProjectsShortlistedBidsAcceptBidUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/shortlisted_bids_accept_bid/' + id + '/' + title;
      return new MyProjectsShortlistedBidsAcceptBid( id : id,
          title:  title , url : url);
    });

var MyProjectsShortlistedBidsRemoveFromShortlistUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/shortlisted_bids_remove_from_shortlist/' + id + '/' + title;
      return new MyProjectsShortlistedBidsRemoveFromShortlist( id : id,
          title:  title , url : url);
    });

//mulai
var MyProjectsShortlistedBidsShowConversationUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/shortlisted_bids_show_conversation/' + id + '/' + title;
      return new MyProjectsShortlistedBidsShowConversation( id : id,
          title:  title , url : url);
    });
var MyProjectsShortlistedBidsViewProfileUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/shortlisted_bids_view_profile/' + id + '/' + title;
      return new MyProjectsShortlistedBidsViewProfile( id : id,
          title:  title , url : url);
    });
var MyProjectsShowBidsAcceptBidUser = new Handler(
	handlerFunc: (BuildContext context, Map<String, List<String>> params) {
	  String id = params["id"]?.first;
	  String title = params["title"]?.first;
	  String id1 = params["id1"]?.first;
	  String title1 = params["title1"]?.first;
	  String url = '/user/my_projects/show_bids_accept_bid/' + id + '/' + title +'/' + id1 + '/' + title1;
	  return new MyProjectsShowBidsAcceptBid( id : id,
		  title:  title , url : url);
	});
var MyProjectsShowBidsAddToShortlistUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_bids_add_to_shortlist/' + id + '/' + title;
      return new MyProjectsShowBidsAddToShortlist( id : id,
          title:  title , url : url);
    });
var MyProjectsShowBidsShowConversationUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_bids_show_conversation/' + id + '/' + title;
      return new MyProjectsShowBidsShowConversation( id : id,
          title:  title , url : url);
    });
var MyProjectsShowBidsViewProfileUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_bids_view_profile/' + id + '/' + title;
      return new MyProjectsShowBidsViewProfile( id : id,
          title:  title , url : url);
    });
var MyProjectsShowConversationAcceptBidUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_conversation_accept_bid/' + id + '/' + title;
      return new MyProjectsShowConversationAcceptBid( id : id,
          title:  title , url : url);
    });
var MyProjectsShowConversationAddToShortlistUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_conversation_add_to_shortlist/' + id + '/' + title;
      return new MyProjectsShowConversationAddToShortlist( id : id,
          title:  title , url : url);
    });
var MyProjectsShowConversationNewReplyUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String id1 = params["id1"]?.first;
      String title1 = params["title1"]?.first;
      String url = '/user/my_projects/show_conversation_new_reply/' + id + '/' + title + '/' + id1 + '/' + title1;
      return new MyProjectsShowConversationNewReply( id : id,
          title:  title , url : url);
    });
var MyProjectsShowConversationReplyUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_conversation_reply/' + id + '/' + title;
      return new MyProjectsShowConversationReply( id : id,
          title:  title , url : url);
    });
var MyProjectsShowConversationShowBidsUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_conversation_show_bids/' + id + '/' + title;
      return new MyProjectsShowConversationShowBids( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadAcceptOfferUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_accept_offer/' + id + '/' + title;
      return new MyProjectsShowThreadAcceptOffer( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadAcceptOrRejectWorkUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_accept_or_reject_work/' + id + '/' + title;
      return new MyProjectsShowThreadAcceptOrRejectWork( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadBroadcastMessageUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_broadcast_message/' + id + '/' + title;
      return new MyProjectsShowThreadBroadcastMessage( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadCancelArbitrationUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_cancel_arbitration/' + id + '/' + title;
      return new MyProjectsShowThreadCancelArbitration( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadFileArbitrationUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_file_arbitration/' + id + '/' + title;
      return new MyProjectsShowThreadFileArbitration( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadNewOfferUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_new_offer/' + id + '/' + title;
      return new MyProjectsShowThreadNewOffer( id : id,
          title:  title , url : url);
    });

var MyProjectsShowThreadNewReplyUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_new_reply/' + id + '/' + title;
      return new MyProjectsShowThreadNewReply( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadRateOwnerUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_rate_owner/' + id + '/' + title;
      return new MyProjectsShowThreadRateOwner( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadRateWorkerUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_rate_worker/' + id + '/' + title;
      return new MyProjectsShowThreadRateWorker( id : id,
          title:  title , url : url);
    });

var MyProjectsShowThreadReplyUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_reply/' + id + '/' + title;
      return new MyProjectsShowThreadReply( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadReportDoneUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_report_done/' + id + '/' + title;
      return new MyProjectsShowThreadReportDone( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadReportProgressUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_report_progress/' + id + '/' + title;
      return new MyProjectsShowThreadReportProgress( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadRespondArbitrationUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_respond_arbitration/' + id + '/' + title;
      return new MyProjectsShowThreadRespondArbitration( id : id,
          title:  title , url : url);
    });
var MyProjectsShowThreadWeeklyReportUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_projects/show_thread_weekly_report/' + id + '/' + title;
      return new MyProjectsShowThreadWeeklyReport( id : id,
          title:  title , url : url);
    });

var CartCartItemsDecreaseUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/cart/cart_items_decrease/' + id + '/' + title;
      return new CartCartItemsDecrease( id : id,
          title:  title , url : url);
    });
var CartCartItemsIncreaseUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/cart/cart_items_increase/' + id + '/' + title;
      return new CartCartItemsIncrease( id : id,
          title:  title , url : url);
    });
var CartCartItemsRemoveUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/cart/cart_items_remove/' + id + '/' + title;
      return new CartCartItemsRemove( id : id,
          title:  title , url : url);
    });
var MyBidsShowConversationNewReplyUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_bids/show_conversation_new_reply/' + id + '/' + title;
      return new MyBidsShowConversationNewReply( id : id,
          title:  title , url : url);
    });
var MyBidsShowConversationPlaceNewBidUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_bids/show_conversation_place_new_bid/' + id + '/' + title;
      return new MyBidsShowConversationPlaceNewBid( id : id,
          title:  title , url : url);
    });

var MyBidsShowConversationReplyUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_bids/show_conversation_reply/' + id + '/' + title;
      return new MyBidsShowConversationReply( id : id,
          title:  title , url : url);
    });


var MyProductsCommentsNewReplyPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/public/my_products/comments_new_reply/' + id + '/' + title;
      return new MyProductsCommentsNewReply( id : id,
          title:  title , url : url);
    });
var MyProductsScreenshotsAddImageUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_products/screenshots_add_image/' + id + '/' + title;
      return new MyProductsScreenshotsAddImage( id : id,
          title:  title , url : url);
    });

var MyProductsScreenshotsEditImageUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_products/screenshots_edit_image/' + id + '/' + title;
      return new MyProductsScreenshotsEditImage( id : id,
          title:  title , url : url);
    });
var MyServicesCommentsNewReplyPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/public/my_services/comments_new_reply/' + id + '/' + title;
      return new MyServicesCommentsNewReply( id : id,
          title:  title , url : url);
    });
var MyServicesScreenshotsAddImageUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_services/screenshots_add_image/' + id + '/' + title;
      return new MyServicesScreenshotsAddImage( id : id,
          title:  title , url : url);
    });
var MyServicesScreenshotsEditImageUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_services/screenshots_edit_image/' + id + '/' + title;
      return new MyServicesScreenshotsEditImage( id : id,
          title:  title , url : url);
    });
var MyProfilePortofolioAddPortofolioUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_profile/portofolio_add_portofolio/' + id + '/' + title;
      return new MyProfilePortofolioAddPortofolio( id : id,
          title:  title , url : url);
    });
var MyProfilePortofolioEditUser = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/user/my_profile/portofolio_edit/' + id + '/' + title;
      return new MyProfilePortofolioEdit( id : id,
          title:  title , url : url);
    });



var BrowseProductsProductCommentsNewReplyPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/public/browse_products/product_comments_new_reply/' + id + '/' + title;
      return new BrowseProductsProductCommentsNewReply( id : id,
          title:  title , url : url);
    });
var BrowseServicesServiceCommentsNewReplyPublic = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params["id"]?.first;
      String title = params["title"]?.first;
      String url = '/public/browse_services/service_comments_new_reply/' + id + '/' + title;
      return new BrowseServicesServiceCommentsNewReply( id : id,
          title:  title , url : url);
    });


//-------------------------------------------------------------------   
