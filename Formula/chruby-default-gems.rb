class ChrubyDefaultGems < Formula
  desc "Automatically install gems every time you install a new version of Ruby"
  homepage "http://0x49.0x2a.xyz/RobertAudi/chruby-default-gems"
  url "http://0x49.0x2a.xyz/RobertAudi/chruby-default-gems/repository/archive.zip?ref=master"
  head "http://0x49.0x2a.xyz/RobertAudi/chruby-default-gems.git"

  version "0.1.0"
  sha256 "40d77d2a30b176067410768456a9083367fcbe52c34feafe781309b30220b3fd"

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
