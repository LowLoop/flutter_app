class CatList {
  final String name;
  final int resourceCount;
  final int imgId;
  final String imgUrl;
  final int type;
  final int category;
  final int resourceType;
  final bool hot;

  CatList({
    this.name,
    this.resourceCount,
    this.imgId,
    this.imgUrl,
    this.type,
    this.category,
    this.resourceType,
    this.hot
  });

  factory CatList.fromJson(Map<String, dynamic> json) {
    return new CatList(
      name: json['name'],
      resourceCount: json['resourceCount'],
      imgId: json['imgId'],
      imgUrl: json['imgUrl'],
      type: json['type'],
      category: json['category'],
      resourceType: json['resourceType'],
      hot: json['hot'],
    );
  }

}