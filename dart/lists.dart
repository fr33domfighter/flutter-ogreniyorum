void main() {
  List<String> ders = [
    "mat",
    "kimya",
    "fizik",
    "biyoloji",
    "tde"
  ]; //sabit hacimli listelerdir
  print(ders);
  //growable list istediğimiz kadar öge eklenebilir
  List<String> sehir = ["ankara", "istanbul", "izmir"];
  print(sehir);
  sehir.add("erzurum"); //listeye ekleme yapmak için kullanılır
  print(sehir);
  print(sehir.where((s) => s.contains("i"))); //arama yapmak için kullanılır
  print(sehir.first); //devamı => dart list funct
}
