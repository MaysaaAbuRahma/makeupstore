class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.subTitle,
      required this.description,
      required this.image});
}

// list of products
List<Product> products = [
  Product(
      id: 1,
      price: 59,
      title: " Foundation",
      subTitle: " High quality",
      image: "images/—Pngtree—bottled liquid foundation makeup_4724681.png",
      description: " For applying liquid or cream foundation smoothly"),
  Product(
      id: 2,
      price: 1099,
      title: "Lip Brush",
      subTitle: "Bright lips ",
      image: "images/—Pngtree—bright red lipstick_2984346.png",
      description: "For precise application of lip color."),
  Product(
      id: 3,
      price: 39,
      title: " Eyeliner Brush",
      subTitle: "beautiful eyes",
      image: "images/pn.png",
      description: "For applying gel or cream eyeliner."),
  Product(
      id: 4,
      price: 56,
      title: "Mascara",
      subTitle: "longer eyelashes ",
      image: "images/pngegg (2).png",
      description: "For applying gel or cream eyeliner."),
  Product(
      id: 5,
      price: 68,
      title: "Perfumes",
      subTitle: "beautiful smell",
      image: "images/pngegg (3).png",
      description:
          "to provide a pleasant fragrance and enhance personal scent"),
  Product(
      id: 6,
      price: 39,
      title: " Concealer",
      subTitle: " To hide flaws ",
      image: "images/pngegg (4).png",
      description:
          "The function of concealer is to hide imperfections and dark spots on the skin"),
];
