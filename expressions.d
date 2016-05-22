/*
   Multi-Line Comment
*/
import std.stdio;

void main() {
  // Single Line Comment
  immutable inchesPerFoot = 12;
  immutable cmPerInch = 2.54;

  foreach(feet; 5 .. 7) {
    foreach(inches; 0 .. inchesPerFoot) {
      //writeln(feet, "'", inches, "''\t", (feet * inchesPerFoot + inches) * cmPerInch);
      writefln("%s'%s''\t%s", feet, inches, (feet * inchesPerFoot + inches) * cmPerInch);
    }
  }
}
