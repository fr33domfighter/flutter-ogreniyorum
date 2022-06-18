void main() {
  var log = true;
  if (log == true) {
    print("girildi");
  } else {
    print("login oldu");
  }

  int puan = 45;
  if (puan >= 50) {
    print("dersi geçti");
  } else if (puan >= 40) {
    print("büte kaldı");
  }

  String not = "D"; //küçük büyük harf duyarlı bir dildir dikkat idlmeli
  switch (not) {
    case "A":
      {
        print("süper");
      }
      break;
    case "B":
      {
        print("iyi");
      }
      break;
    case "C":
      {
        print("idare eder");
      }
      break;
    case "D":
      {
        print("kötü");
      }
      break;
    default:
      {
        print("bilinmiyor");
      }
  }
}
