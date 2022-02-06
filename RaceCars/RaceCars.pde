Car car1;
Car car2;
Car car3;

void setup() {
  size(600, 600);
  car1 = new Car(0, 50, 1.0);
  car2 = new Car(0, 150, 2.0);
  car3 = new Car(0, 300, 0.5);
}

void draw() {
  background(51);
  car1.drawCar1();
  car2.drawCar2();
  car3.drawCar3();

  car1.move();
  car2.move();
  car3.move();
}
