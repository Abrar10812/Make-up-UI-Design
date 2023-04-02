class Model1 {
  String? imgurl;
  String? catName;


  Model1({this.imgurl, this.catName});
  static List<Model1> bottomImg() {
    return [
      Model1(imgurl: "images/1.jpg"),
      Model1(imgurl: "images/2.jpg"),
      Model1(imgurl: "images/3.jpg"),
    ];
  }

  static List<Model1> getImg() {
    return [
      Model1(imgurl: "images/1.jpg"),
      Model1(imgurl: "images/2.jpg"),
      Model1(imgurl: "images/3.jpg"),
      Model1(imgurl: "images/4.jpg"),
      Model1(imgurl: "images/5.jpg"),
      Model1(imgurl: "images/6.png"),
      Model1(imgurl: "images/7.jpg"),
      Model1(imgurl: "images/8.jpg"),
      Model1(imgurl: "images/9.jpg"),
      Model1(imgurl: "images/10.jpg"),
    ];
  }

  static List<Model1> getCatagorie() {
    return [
      Model1(imgurl: "images/pc1.png", catName: "Foundation"),
      Model1(imgurl: "images/pc2.png", catName: "Lipstick"),
      Model1(imgurl: "images/pc3.jpg", catName: "EyeShadow"),
      Model1(imgurl: "images/pc4.jpg", catName: "Mascara"),
    ];
  }
}