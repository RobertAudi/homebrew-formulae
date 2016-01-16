class ChrubyDefaultGems < Formula
  desc "Automatically install gems every time you install a new version of Ruby"
  homepage "http://0x49.0x2a.xyz/RobertAudi/chruby-default-gems"
  head "http://0x49.0x2a.xyz/RobertAudi/chruby-default-gems.git"

  version "0.1.0"
  url "http://0x49.0x2a.xyz/RobertAudi/chruby-default-gems/repository/archive.zip?ref=master"
  sha256 "0d65274be8323b0608ddb90080508ff48b3f55a690d4baea10e3d4dbccd9a22f"

  def install
    share.install "chruby-default-gems.sh"
    bin.install "chruby-default-gems"
  end

  def caveats
    %(
      Installation:

      Copy the following line into your .bash_profile or .zshenv:

        source /usr/local/share/chruby-default-gems.sh

      You can also set the DEFAULT_GEMFILE variable if you wish to store
      your default-gems in a location other than ~/.default-$RUBY-gems
      (where $RUBY is the kind of Ruby you're installing: "jruby", "ruby", ...)
    )
  end

  # test do
  #   system "#{bin}/chruby-default-gems --version | grep #{version}"
  # end
end
