enum Staus {none, running, stoppend, paused}

main (List<String> args) {
  var b = Staus.paused;
  if (b == Staus.paused) {
    print("running");
  }
}