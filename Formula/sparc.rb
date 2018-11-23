class Sparc < Formula
  desc "Sparklines for your shell ▄ ▇ ▂ ▁ ▅ ▃"
  homepage "https://github.com/RobertAudi/sparc"
  url "https://github.com/RobertAudi/sparc/archive/master.zip"
  head "https://github.com/RobertAudi/sparc.git"

  version "1.0.0"
  sha256 "0e4f3ec7e84de54252410cfcd23c7f2b3bcfdf07a20fbfea2800c5861fb3e36c"

  def install
    system "make"
    bin.install "sparc"
    bin.install "sparkl"
  end

  test do
    system "sparc",  *(10.times.each_with_object([]) { |_, a| a << rand((0.0)..(100.0)).round(2).to_s })
    system "sparkl", *(10.times.each_with_object([]) { |_, a| a << rand((0.0)..(100.0)).round(2).to_s })
  end
end
