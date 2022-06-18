void main() {
  selam("mehmet");
  selam1();
  print(hesap(10000, 10));
  test1(1);
  test2(sayi3: 5, sayi1: 16, sayi2: 45);
}

void selam1() {
  print("hello world");
}

void selam(String isim) {
  print("hello world" + isim);
}

double hesap(double krediTutari, double yuzde) {
  var sonuc = krediTutari * yuzde / 100;
  return sonuc;
}

void test1(int sayi1, [int? sayi2, int? sayi3]) {
  //opsiyonel
  print(sayi1);
  print(sayi2);
  print(sayi3);
}

void test2({int? sayi1, int? sayi2, int? sayi3}) {
  //isimlendirilmiş parametre yani parametre verilmeden de çalışır
  //ve parametrelerin hangi sırayla verildiği önemli değildir.
  print(sayi1);
  print(sayi2);
  print(sayi3);
}
