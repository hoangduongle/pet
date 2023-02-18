import 'package:pets/app/core/model/animalType.dart';
import 'package:pets/app/core/model/owner.dart';
import 'package:pets/app/core/model/user.dart';

abstract class Repository {
// //=========================================================================Image
  Future<List<User>> getListUser();
  Future<int> register(User user);
  Future<User> login(String phoneNumber, String password);

  Future<List<AnimalType>> getAnimalType();
  Future<List<Owner>> getPetOwner();
// //=======================================================================Service
//   Future<List<ServiceCategoryContent>> getListServiceCate();
//   Future<List<ServiceContent>> getListServiceContentByCateId(int cateId);
// //==========================================================================News
//   Future<List<NewsContent>> getListNewsByType(String type);
// //====================================================================Abtraction
//   Future<List<AbstractionsContent>> getListAbtraction();
// //=========================================================================Order
//   Future<List<OrderContent>> getOrderByBookingId(int bookingId);
//   Future<OrderContent> getOrderId(int id);
//   Future<List<OrderDetailContent>> getOrderdetailByOrderId(int orderId);
//   Future<int> updateOrderByOrderId(OrderContent orderContent);
//   Future<int> insertOrderdetail(OrderDetailContent orderDetailContent);
//   Future<int> insertOrderRequest(OrderRequest orderRequest);
//   Future<OrderPaymentContent> getOrderPaymentByOrderId(int orderId);
// //=======================================================================Booking
//   Future<BookingContent> getBookingByRoomId(int roomId);
//   Future<CustomerContent> getPrimaryCustomerByBookingId(int bookingId);
// //==================================================================Notification
//   Future<List<MessageContent>> getListMessage(int bookingId);
// //=======================================================================Payment
//   Future<MomoContent> momoPayment(
//     double amount,
//     List<String> orderId,
//   );
//   Future<VNPayContent> vnPayPayment(int orderId, double amount);
// //===============================================================Request Service
//   Future<int> requestService(int bookingId, String dateTime, int id,
//       String name, String type, String status);
//   Future<RequestServiceContent> getRequestService(int bookingId);
// //=========================================================================Alarm
//   Future<AlarmContent> insertAlarm(AlarmContent alarmContent);
//   Future<int> deleteAlarm(int id);
//   Future<int> updateAlarm(AlarmContent alarmContent);
//   Future<List<AlarmContent>> getListAlarm(int bookingId);
// //=======================================================================FeedBack
//   Future<List<FeedbackContent>> getListFeedbackContent();
//   Future<List<CustomerFeedback>> getListCustomerFeedback(int bookingId);
//   Future<int> insertCustomerFeedback(CustomerFeedback customerFeedback);
//   Future<int> updateCustomerFeedback(CustomerFeedback customerFeedback);
// //=============================================================Top 3 Sale Service
//   Future<List<String>> serviceTop();
}
