void main() {
  var dict = new Map(); //dictionary yapısıyla aynıdır
  var dict1 = {
    "kitap": "book",
    "radyo": "radio",
    "kalem": "pencil",
  };
  dict["book"] = "kitap";
  dict["radio"] = "radyo";
  dict["pencil"] = "kalem";
  dict.remove("book"); //mapten eleman siler

  print(dict);
  print(dict1);

  for (var key in dict1.keys) {
    //map anahtarlarını gezer
    print(key + " : " + dict1[key].toString());
  }
  for (var value in dict1.values) {
    print(value);
  }

  print(dict1.containsKey("kitap")); //map içinde key aramak için kullanılır
  print(dict1.containsValue("book")); //map içinde value aramak için kullanılır

  dict1.forEach((key, value) => {print(key + " : " + value)});
}
