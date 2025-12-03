import 'dart:async';

Future<String> fetchUser() async {
  return await Future.delayed(Duration(seconds: 2), () => "User: Alice");
}

Future<String> fetchOrders() async {
  return await Future.delayed(Duration(seconds: 2), () => "Orders: 3 items");
}

void main() async {
  print("Fetching user...");
  String user = await fetchUser(); // Wait for fetchUser to complete
  print(user);

  print("Fetching orders...");
  String orders = await fetchOrders(); // Wait for fetchOrders to complete
  print(orders);
}
