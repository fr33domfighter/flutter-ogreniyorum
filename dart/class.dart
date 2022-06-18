void main() {
  var personalManager = PersonalManager();
  personalManager.add();
  var customerManager = CustomerManager();
  var customer2 =
      new Customer.withInfo("mahmut", "arslan", 37741121848, 123, "24.04.2022");
  customer2.FirstName = "mehmet";
  customer2.LastName = "arslan";
  customerManager.kayit(
      new Customer.withInfo("Mehmet", "arslan", 10495332388, 12, "23.04.2022"));
  customerManager.kayit(customer2);
  var control = personControl();
  control.operation(customer2);
}

class personControl {
  void operation(person person) {
    print(person.FirstName);
  }
}

class PersonalManager {
  void register() {
    print("kayıt edildi");
  }

  void add() {
    print("eklendi");
  }

  void delete() {
    print("silindi");
  }

  void update() {
    print("güncellendi");
  }
}

class CustomerManager {
  void kayit(Customer customer) {
    print("kayıt edildi " + customer.FirstName + " " + customer.LastName);
  }

  void ekle() {
    print("eklendi");
  }

  void sil() {
    print("silindi");
  }

  void guncelle() {
    print("güncellendi");
  }
}

class Customer extends person {
  //person clsas'ındaki özellikler buraya aktarıldı

  late String alisVerisTarih;
  late int cardNo;
//constructor bloğu
  Customer.withInfo(String FirstName, String LastName, int tcNo, int cardNo,
      String alisVerisTarih) {
    this.FirstName = FirstName;
    this.LastName = LastName;
    this.tcNo = tcNo;
    this.cardNo = cardNo;
    this.alisVerisTarih = alisVerisTarih;
  }
}

class personel extends person {
  //person clsas'ındaki özellikler buraya aktarıldı
  late String gristarih;
//constructor bloğu
  personel.withInfo(
      String FirstName, String LastName, int tcNo, String girisTarih) {
    this.FirstName = FirstName;
    this.LastName = LastName;
    this.tcNo = tcNo;
    this.gristarih = gristarih;
  }
}

class person {
  late String FirstName;
  late String LastName;
  late int tcNo;
}
