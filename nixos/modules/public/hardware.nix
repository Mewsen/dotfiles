{ ... }: {

  # Whether to enable i2c devices support.
  hardware.i2c.enable = true;

  # bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  #Provides an interface to sensors like Accelerometers and Light sensors.
  hardware.sensor.iio.enable = true;

}
