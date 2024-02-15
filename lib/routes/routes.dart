import 'package:flutter/material.dart';
import 'package:home_plate/views/rider/acceptorder/rider_accept_order_screen.dart';
import 'package:home_plate/views/rider/earnings/rider_earning_screen.dart';
import 'package:home_plate/views/rider/navbar/rider_navbar.dart';
import 'package:home_plate/views/rider/order/rider_order_screen.dart';
import 'package:home_plate/views/user/add_new_Card/add_new_address.dart';
import 'package:home_plate/views/user/add_new_Card/add_new_card_screen.dart';
import 'package:home_plate/views/user/address/address_screen.dart';
import 'package:home_plate/views/user/auth/Forgot/change_pass_screen.dart';
import 'package:home_plate/views/user/auth/Forgot/enter_code_screen.dart';
import 'package:home_plate/views/user/auth/Forgot/forgot_screen.dart';
import 'package:home_plate/views/user/auth/Login/login_page.dart';
import 'package:home_plate/views/user/auth/loginWithSocialApp/login_screen.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/user/auth/Signup/signup_screen.dart';
import 'package:home_plate/views/user/cart/cart_screen.dart';
import 'package:home_plate/views/user/checkout/checkout_screen.dart';
import 'package:home_plate/views/user/deliveryboy/deliveryboy_detail_screen.dart';
import 'package:home_plate/views/user/favorite/favorite_screen.dart';
import 'package:home_plate/views/user/food_details/food_detail_screen.dart';
import 'package:home_plate/views/user/food_details/food_detail_screen_two.dart';
import 'package:home_plate/views/user/home/home_screen.dart';
import 'package:home_plate/views/base/onboarding/onboard.dart';
import 'package:home_plate/views/base/splash%20screen/splash_screen.dart';
import 'package:home_plate/views/user/home/navbar.dart';
import 'package:home_plate/views/user/homemade%20food/home_food_screen.dart';
import 'package:home_plate/views/user/invitefriends/invite_friends_screen.dart';
import 'package:home_plate/views/user/notification/notification_empty.dart';
import 'package:home_plate/views/user/notification/notification_screen.dart';
import 'package:home_plate/views/user/order/views/trackorder/track_order_screen.dart';
import 'package:home_plate/views/user/payment_method/payment_method_screen.dart';
import 'package:home_plate/views/user/popularfood/popular_food_screen.dart';
import 'package:home_plate/views/user/profile/edit_profile.dart';
import 'package:home_plate/views/user/rating/rating_screen.dart';
import 'package:home_plate/views/user/review/review_screen.dart';
import 'package:home_plate/views/user/specialOffers/special_offers_screen.dart';
import 'package:home_plate/views/user/successfully_done/successfully_done.dart';
import 'package:home_plate/views/user/wallet/wallet_empty_screen.dart';
import 'package:home_plate/views/user/wallet/wallet_empty_transaction.dart';
import 'package:home_plate/views/user/wallet/wallet_screen.dart';
import 'package:home_plate/views/vender/chat/vender_chat_screen.dart';
import 'package:home_plate/views/vender/home/vender_home_screen.dart';
import 'package:home_plate/views/vender/myfoods/vender_foods.dart';
import 'package:home_plate/views/vender/navbar/vender_navbar.dart';
import 'package:home_plate/views/vender/notification/vender_notification_screen.dart';
import 'package:home_plate/views/vender/orders/vender_order_screen.dart';
import 'package:home_plate/views/vender/paymenthistory/vender_payment_history.dart';
import 'package:home_plate/views/vender/profile/vender_profile_screen.dart';
import 'package:home_plate/views/vender/uploadfood/uploadfood_screen.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      //-------------User Routes----------------
      case splash_screen_route:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onboarding_screen_route:
        return MaterialPageRoute(builder: (_) => const Onboard());
      case login_screen_route:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case login_page_route:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case signup_screen_route:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case home_screen_route:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case forgot_screen_route:
        return MaterialPageRoute(builder: (_) => const ForgotScreen());
      case enter_code_screen_route:
        return MaterialPageRoute(builder: (_) => const EnterCodeScreen());
      case change_password_screen_route:
        return MaterialPageRoute(builder: (_) => const ChangePassScreen());
      case navbar_screen_route:
        return MaterialPageRoute(builder: (_) => const NavBar());
      case notification_screen_route:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case notification_empty_screen_route:
        return MaterialPageRoute(builder: (_) => const NotificationEmpty());
      case cart_screen_route:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case checkout_screen_route:
        return MaterialPageRoute(builder: (_) => const CheckOutScreen());
      case payment_method_screen_route:
        return MaterialPageRoute(builder: (_) => const PaymentMethodScreen());
      case add_new_card_screen_route:
        return MaterialPageRoute(builder: (_) => const AddNewCardScreen());
      case add_new_address_screen_route:
        return MaterialPageRoute(builder: (_) => const AddNewAddress());
      case address_screen_route:
        return MaterialPageRoute(builder: (_) => const AddressScreen());
      case special_offers_screen_route:
        return MaterialPageRoute(builder: (_) => const SpecialOffersScreen());
      case successfully_done_screen_route:
        return MaterialPageRoute(builder: (_) => const SuccessfullyDone());
      case edit_profile_screen_route:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case wallet_screen_route:
        return MaterialPageRoute(builder: (_) => const WalletScreen());
      case wallet_empty_transaction_screen_route:
        return MaterialPageRoute(
            builder: (_) => const WalletEmptyTransactionScreen());
      case wallet_empty_screen_route:
        return MaterialPageRoute(builder: (_) => const WalletEmptyScreen());
      case food_detail_screen_route:
        return MaterialPageRoute(builder: (_) => const FoodDetailScreen());
      case food_detail_screen_one_route:
        return MaterialPageRoute(builder: (_) => const FoodDetailScreenTwo());
      case review_screen_route:
        return MaterialPageRoute(builder: (_) => const ReviewScreen());
      case rating_screen_route:
        return MaterialPageRoute(builder: (_) => const RatingScreen());
      case invite_friends_screen_route:
        return MaterialPageRoute(builder: (_) => const InviteFriendsScreen());
      case popular_food_screen_route:
        return MaterialPageRoute(builder: (_) => const PopularFoodScreen());
      case home_food_screen_route:
        return MaterialPageRoute(builder: (_) => const HomeFoodScreen());
      case track_order_screen_route:
        return MaterialPageRoute(builder: (_) => const TrackOrderScreen());
      case delivery_boy_detail_screen_route:
        return MaterialPageRoute(
            builder: (_) => const DeliveryBoyDetailScreen());
      case favorite_screen_route:
        return MaterialPageRoute(builder: (_) => const FavoriteScreen());

      //-----------------Vendor Routes----------------
      case vender_navbar_route:
        return MaterialPageRoute(builder: (_) => const VenderNavbar());
      case vender_chat_screen_route:
        return MaterialPageRoute(builder: (_) => const VenderChatScreen());
      case vender_home_screen_route:
        return MaterialPageRoute(builder: (_) => const VenderHomeScreen());
      case vender_order_screen_route:
        return MaterialPageRoute(builder: (_) => const VenderOrderScreen());
      case vender_profile_screen_route:
        return MaterialPageRoute(builder: (_) => const VenderProfileScreen());
      case uploadfood_screen_route:
        return MaterialPageRoute(builder: (_) => const UploadFoodScreen());
      case vender_notification_screen_route:
        return MaterialPageRoute(
            builder: (_) => const VenderNotificationScreen());
      case vender_myfood_route:
        return MaterialPageRoute(builder: (_) => const VenderMyFoods());
      case vender_payment_history_route:
        return MaterialPageRoute(builder: (_) => const VenderPaymentHistory());

      //------------------Rider Routes-----------------
      case rider_navbar_route:
        return MaterialPageRoute(builder: (_) => const RiderNavBar());
      case rider_order_screen_route:
        return MaterialPageRoute(builder: (_) => const RiderOrderScreen());
      case rider_accept_order_screen_route:
        return MaterialPageRoute(
            builder: (_) => const RiderAcceptOrderScreen());
      case rider_earning_screen_route:
        return MaterialPageRoute(builder: (_) => const RiderEarningScreen());

      default:
        return MaterialPageRoute(builder: (_) => const Text("Page Not Found"));
    }
  }
}
