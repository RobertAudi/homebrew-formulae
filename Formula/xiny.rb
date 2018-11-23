class Xiny < Formula
  desc "Simple command line tool for unit conversions"
  homepage "https://xiny.sh/"

  url "https://github.com/bcicen/xiny/releases/download/v0.3.1/xiny-0.3.1-darwin-amd64"
  sha256 "be441c44b36765c14ad2dca9b1cc3b82f279f08baf1190b9de0a6824b5c1fbf9"

  def install
    mv "xiny-0.3.1-darwin-amd64", "xiny"
    bin.install "xiny"
  end

  test do
    system "xiny", "--version"
    system "xiny", "--help"
    system "xiny", "20", "kilograms", "in", "pounds"
  end
end
