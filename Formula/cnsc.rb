class Cnsc < Formula
  desc "Angular commits minus scope and stuff."
  homepage "https://github.com/RobertAudi/cnsc"
  head "https://github.com/RobertAudi/cnsc.git"

  def install
    system "make", "all", "PREFIX=#{prefix}"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/cnsc", "-h"
  end
end
