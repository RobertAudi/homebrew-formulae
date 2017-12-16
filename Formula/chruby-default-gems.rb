class ChrubyDefaultGems < Formula
  desc "Automatically install gems every time you install a new version of Ruby"
  homepage "https://github.com/RobertAudi/chruby-default-gems"
  head "https://github.com/RobertAudi/chruby-default-gems.git"

  version "1.1.0"
  url "https://github.com/RobertAudi/chruby-default-gems/archive/v1.1.0.tar.gz"
  sha256 "beddf3f01c56dd6dd959c86783654908759b7e6f6adb3747b130afd437be68dd"

  depends_on "chruby"
  depends_on "ruby-install"

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

  test do
    system "true"
  end
end
