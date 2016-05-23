import std.stdio, std.string, std.algorithm;

void main() {
  uint[string] freqs;
  auto file = File("hamlet.txt");
  foreach (line; file.byLine()) {
    foreach (word; split(strip(line))) {
      ++freqs[word.idup];
    }
  }

  string[] words = freqs.keys;
  sort!((a, b) { return freqs[a] > freqs[b]; })(words);
  foreach (word; words) {
    writefln("%6u\t%s", freqs[word], word);
  }
}
