class Appswitch < Formula
  desc "Switch, hide, show, quit, kill or list macOS applications from the command line or scripts."
  homepage "https://sabi.net/nriley/software/#appswitch"

  url "https://sabi.net/nriley/software/appswitch-1.1.2.tar.gz"
  sha256 "f4a9ffd2106d94ea2cb37f6714f850049902a029b141f2a2e3c6b5d2bfa9a8bb"

  head "https://github.com/nriley/appswitch.git"

  depends_on :xcode => :build

  def install
    if build.head?
      cd "appswitch" do
        system "xcodebuild", "-configuration", "Deployment", "DSTROOT=#{Pathname.pwd}", "DEPLOYMENT_LOCATION=YES", "install"
        system "SetFile", "-c", "'ttxt'", "-t", "'TEXT'", "README", "appswitch.1"

        man1.install "appswitch.1"
        bin.install "appswitch"
      end
    else
      man1.install "appswitch.1"
      bin.install "appswitch"
    end
  end

  test do
    app_info = `#{bin}/appswitch -L /System/Library/CoreServices/Finder.app`
    assert_match /.+?Finder.+?\(com\.apple\.finder\)/, app_info.lines[1]
    system bin/"appswitch", "-L", "/System/Library/CoreServices/Finder.app"
  end
end
