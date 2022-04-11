import Debug "mo:base/Debug"

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 3254154634565456;
  // Debug.print(debug_show(id));

  public func topUp(amount: Nat) {
    currentValue +=  amount;
    Debug.print(debug_show(currentValue));
  };

  public func withDraw(amount: Nat) {
    let tempValue: Int = currentValue - amount;
    if(tempValue  >= 0){
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("error: amount is greater then the current value")
    }
  };

  public query func checkBalance(): async Nat{
      return currentValue;
  };
}
