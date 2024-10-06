void main() {
	final customer = Customer("Khalid");
	customer.add(54.5);
	customer.add(12.2);
	print(customer.getPurchaseAmount());
  final loyalCustomer = LoyalCustomer("Ahmed");
 loyalCustomer.add(50);
	loyalCustomer.add(50);
  print(loyalCustomer.getPurchaseAmount());
}

class Customer{
    String name;
    double _purchaseAmount = 0;

    Customer(this.name);

    void add(double price){
        _purchaseAmount += price;
    }

    double getPurchaseAmount() {
        return _purchaseAmount;
    }
}

class LoyalCustomer extends Customer {
  LoyalCustomer(super.name);

@override
double getPurchaseAmount() => (super._purchaseAmount*0.9); 
  }
   
  

