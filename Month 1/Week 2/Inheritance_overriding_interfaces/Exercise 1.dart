class Device {
  void turnOn() {
    print("Device is turning on...");
  }
}

class Phone extends Device {
  @override
  void turnOn() {
    print("Phone is powering on. Welcome!");
  }
}

class Laptop extends Device {
  @override
  void turnOn() {
    print("Laptop is booting up. Please wait...");
  }
}

void main() {
  Device d = Device();
  Phone p = Phone();
  Laptop l = Laptop();

  d.turnOn();
  p.turnOn();
  l.turnOn();
}
