require "formula"

class TranslateShell < Formula
  homepage "http://www.soimort.org/translate-shell"
  url "http://www.soimort.org/translate-shell/translate-shell.tar.gz"
  sha1 "8b8e745efa16c833468ef0ba1c02b51d207b38aa"
  version "0.9.3"

  depends_on "curl" => :optional
  depends_on "fribidi" => :optional
  depends_on "gawk"
  depends_on "mplayer"
  depends_on "rlwrap"

  def install
    bin.install "trans"
    man1.install "trans.1"
  end
end
