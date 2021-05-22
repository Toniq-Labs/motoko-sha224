import SHA224 "./src/SHA224";

actor{
  public query funct test() : async Bool {
    let expected = [144, 163, 237, 158, 50, 178, 170, 244, 198, 28, 65, 14, 185, 37, 66, 97, 25, 225, 169, 220, 83, 212, 40, 106, 222, 153, 168, 9] : [Nat8];
    let test = [116, 101, 115, 116] : [Nat8]; //"test"
    let actual = SHA224.sha224(test);
    return Array.equal<Nat8>(expected, actual, eq);
  };
  func eq(a : Nat8, b : Nat8) : Bool {
    return a == b;
  };
}
