class Fasd < Formula
  desc "CLI tool for quick access to files and directories"
  homepage "https://github.com/clvv/fasd"
  version "1.0.1"
  head "https://github.com/clvv/fasd.git"

  def install
    bin.install  "fasd"
    man1.install "fasd.1"
  end

  test do
    system "#{bin}/fasd", "--init", "auto"
  end
end
