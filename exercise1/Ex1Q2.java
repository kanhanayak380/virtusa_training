class Q2 {
  public static void main(String[] args) {
    Mobile m = new Mobile();
    m.getProductName();
    m.getPrice();
  }
}
abstract class Market{
  abstract void getPrice();
  abstract void getProductName();
}

class Mobile extends Market {
  @Override
  public void getPrice(){
    System.out.println("Price: " + 50000);
  }
  @Override
  public void getProductName(){
    System.out.println("Product: Apple");
  }
}