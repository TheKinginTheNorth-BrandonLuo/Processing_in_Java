Car car1;
Car car2;
Car car3;

void setup() {
  size(600, 600);
  car1 = new Car(0, 50, 1.0, color(#f02929), 50);
  car2 = new Car(0, 150, 2.0, color(#5adae6), 80);
  car3 = new Car(0, 300, 0.5, color(#29f040), 60);
}

void draw() {
  background(51);
  car1.drawCar();
  car2.drawCar();
  car3.drawCar();

  car1.move();
  car2.move();
  car3.move();
}
