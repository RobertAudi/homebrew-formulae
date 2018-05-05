class Lc < Formula
  desc "licensechecker (lc) a command line application which scans directories and identifies what software license things are under producing reports as either SPDX, CSV, JSON or CLI Tabular output. Dual-licensed under MIT or the UNLICENSE."
  homepage "https://github.com/boyter/lc"

  url "https://github.com/boyter/lc/releases/download/v1.3.1/lc-1.3.1-x86_64-apple-darwin.zip"
  sha256 "5fff2a19ec576824eed0ff583f35caf02783ae6bd68f611cea3761f474bd5c85"

  def install
    bin.install "lc"
  end

  test do
    system "lc", "--help"
  end
end
