// Delivery type
enum DeliveryType { delivery, pickup }
// Product class
class Product {
  String name;
  double price;

  Product(this.name, this.price);
}
// Order item class
class OrderItem {
  Product product;
  int quantity;

  OrderItem(this.product, this.quantity);

  double getSubtotal() {
    return product.price * quantity;
  }
}
// Order class
class Order {
  int id;
  List<OrderItem> items;
  DeliveryType deliveryType;
  String? deliveryAddress;

  Order(this.id, this.items, this.deliveryType, this.deliveryAddress);

  void addItem(OrderItem item) {
    items.add(item);
  }

  double getTotalAmount() {
    double total = 0;
    for (var item in items) {
      total = total + item.getSubtotal();
    }
    return total;
  }
}
void main() {

  Product laptop = Product("Laptop", 120.0);
  // create order
  Order order = Order(1001, [], DeliveryType.delivery, "123 Main Street");
  // create order item
  OrderItem item1 = OrderItem(laptop, 1);
  // add item to order
  order.addItem(item1);
  // print order details
  print("Order ID: ${order.id}");
  print("Delivery Type: ${order.deliveryType}");

  if (order.deliveryAddress != null) {
    print("Address: ${order.deliveryAddress}");
  }
  print("\nItems:${item1.product.name}");
  for (var item in order.items) {
    print(" Qty: " + item.quantity.toString() + " Subtotal: " + item.getSubtotal().toString(),
    );
  }
  print("Total Amount: " + order.getTotalAmount().toString());
}
