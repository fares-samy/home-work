// smart_home.dart

abstract class SmartDevice {
  String name;
  bool isOn = false;

  SmartDevice(this.name);

  void turnOn() {
    isOn = true;
    print('$name is turned ON');
  }

  void turnOff() {
    isOn = false;
    print('$name is turned OFF');
  }
}


class Light extends SmartDevice {
  Light(String name) : super(name);
}

class AirConditioner extends SmartDevice {
  int temperature = 24;

  AirConditioner(String name) : super(name);

  void setTemperature(int temp) {
    temperature = temp;
    print('$name temperature set to $temperature°C');
  }
}

class SecurityCamera extends SmartDevice {
  bool motionDetectionEnabled = false;

  SecurityCamera(String name) : super(name);

  void enableMotionDetection() {
    motionDetectionEnabled = true;
    print('$name motion detection enabled');
  }
}


class SmartHomeController {
  List<SmartDevice> devices = [];

  void addDevice(SmartDevice device) {
    devices.add(device);
  }

  void turnAllOn() {
    for (var device in devices) {
      device.turnOn();
    }
  }

  void turnAllOff() {
    for (var device in devices) {
      device.turnOff();
    }
  }
}


void main() {
  var light = Light("Living Room Light");
  var ac = AirConditioner("Bedroom AC");
  var camera = SecurityCamera("Front Door Camera");

  var controller = SmartHomeController();
  controller.addDevice(light);
  controller.addDevice(ac);
  controller.addDevice(camera);

  controller.turnAllOn();

  ac.setTemperature(22);
  camera.enableMotionDetection();

  controller.turnAllOff();
}