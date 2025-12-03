IoPin@ A = component.getPin("a");
IoPin@ B = component.getPin("b");
IoPin@ OUT = component.getPin("out");

void setup()
{
  print("NAnd init");
}

// PinModes: undef_mode=0, input=1, openCo=2, output=3, source=4
void reset()
{
  print("resetting NAnd");

  A.setPinMode(1);
  B.setPinMode(1);
  OUT.setPinMode(3);
  OUT.setVoltage(0);

  A.changeCallBack(element, true);
  B.changeCallBack(element, true);
}

void voltChanged()
{
  print("voltChanged()");
  bool a = A.getInpState();
  bool b = B.getInpState();
  OUT.setOutState(!(a && b));
}
