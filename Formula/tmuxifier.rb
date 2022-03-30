class Tmuxifier < Formula
  desc "Powerful session, window & pane management for Tmux."
  homepage "https://github.com/jimeh/tmuxifier"

  url "https://github.com/jimeh/tmuxifier/archive/v0.13.0.tar.gz"
  sha256 "e7b329bdedf0c8694e3a83c41fd0cee6a003b1fecbdfad8f6d7a48f0be912ec9"

  head "https://github.com/jimeh/tmuxifier.git"

  depends_on "tmux"

  def install
    bin.install "bin/tmuxifier"
  end

  def caveats
    <<~EOS
    Add the following line to the ~/.bashrc or ~/.zshrc file:

      eval "$(tmuxifier init -)"

    If you use the Fish shell, add the following line to the ~/.config/fish/config.fish file:

      eval (tmuxifier init -)

    If you use tcsh, add the following line to the ~/.cshrc or ~/.tcshrc file:

      eval `tmuxifier init -`
    EOS
  end

  test do
    system "tmuxifier", "init", "-"
  end
end
