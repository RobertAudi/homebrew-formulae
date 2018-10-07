class Nq < Formula
  desc "Unix command line queue utility"
  homepage "https://github.com/chneukirchen/nq"
  head "https://github.com/chneukirchen/nq.git"

  def install
    system "make", "all", "PREFIX=#{prefix}"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/nq", "-h"
  end
end
