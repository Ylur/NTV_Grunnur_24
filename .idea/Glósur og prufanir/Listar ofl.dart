import "dart:io";

void main(){

//Lists
var myList = [24,36,33];
// allur listinn
print("${myList}");
// prenta út part af listanum
print("${myList[1]}");

myList[1] = 35;
  print("${myList[1]}");

//búa til tóman lista
var emptyList = [];
print("${emptyList}");
//bæta við tóma listann
emptyList.add("pizza");
  print("${emptyList}");
  //bæta við fleiru en einu
  emptyList.addAll([1,2,3]);
  print("${emptyList}");

  // bæta við á ákveðinn stað, fyrri talan segir til hvar í röðinni,seinn hvað á að bæta við
  myList.insert(3, 2400);
      print("${myList}");

  // bæta við mörgu - setja þarf í []
  myList.insertAll(1,[20,21,22,23]);
  print("${myList}");

// mixed list int og var ofl
var myMixlist = ["einn", "tveir", 1, 2];
  print("${myMixlist}");

  //fjarlægja úr lista
  myMixlist.remove("tveir");
  print("${myMixlist}");
  myMixlist.remove(2);
  print("${myMixlist}");

  //fjarlægja frá ákveðni staðsetningu úr listanum
  myMixlist.removeAt(0);
  print("${myMixlist}");




}