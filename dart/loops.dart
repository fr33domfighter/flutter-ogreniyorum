void main() {
  for (var i = 0; i <= 10; i++) {
    print(i);
  }
  var provinces = ["ankara ", "istanbul ", "izmir", "çorum", "ankara"];
  for (var i = 0; i < provinces.length; i++) {
    print(provinces[i]);
  }
  for (var province in provinces) {
    print(province);
  }
  int sayi = 1;
  while (sayi <= 10) {
    print(sayi);
    sayi++;
  }
  int sayi1 = 10;
  do {
    print("sayi1 :" + sayi1.toString());
    sayi++;
  } while (sayi1 > 10);
}
