class Items{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}
final product = [
  Items(
      id: "Keyur01",
      name:"iphone 12 pro",
      desc:"Apple iphone 12th generation",
      price: 999,
      color: "#33505a",
      image:"https://imgs.search.brave.com/h-0fbQRWPveRYRFOCKmucOG089s2OE6bnil80FAfaMw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/YXBwbGUuY29tL25l/d3Nyb29tL2ltYWdl/cy9wcm9kdWN0L2lw/aG9uZS9zdGFuZGFy/ZC9BcHBsZV9hbm5v/dW5jZS1pcGhvbmUx/MnByb18xMDEzMjAy/MF9iaWcuanBnLmxh/cmdlLmpwZw")
];