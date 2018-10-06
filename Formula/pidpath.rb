class Pidpath < Formula
  desc "Get an executable's path from a pid"
  homepage "https://github.com/jb55/pidpath"
  head "https://github.com/jb55/pidpath.git"

  def install
    system "make"
    bin.install "pidpath"
  end

  test do
    system "#{bin}/pidpath"
  end
end
