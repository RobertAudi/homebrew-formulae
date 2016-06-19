class Sparc < Formula
  desc "Sparklines for your shell ▄ ▇ ▂ ▁ ▅ ▃"
  homepage "https://0x49.0x2a.xyz/RobertAudi/sparc"
  url "https://0x49.0x2a.xyz/RobertAudi/sparc/repository/archive.zip"
  head "https://0x49.0x2a.xyz/RobertAudi/sparc.git"

  version "1.0.0"
  sha256 "afe4e56ef553dd3130cac67d249fa9f78e1d0cc9a184f3c9117bae1cf8db9780"

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
