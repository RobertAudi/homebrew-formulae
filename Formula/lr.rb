class Lr < Formula
  desc "list files, recursively"
  homepage "https://github.com/chneukirchen/lr"
  head "https://github.com/chneukirchen/lr.git"

  def install
    system "make", "all", "PREFIX=#{prefix}"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/lr" "-AFGl" "-ovh"
  end
end
