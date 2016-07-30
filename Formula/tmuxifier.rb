class Tmuxifier < Formula
  desc "Powerful session, window & pane management for Tmux."
  homepage "https://github.com/jimeh/tmuxifier"

  head "https://github.com/jimeh/tmuxifier.git"

  depends_on "tmux"

  bottle :unneeded

  def install
    bin.install "bin/tmuxifier"
  end

  def caveats
    <<-EOS.undent
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
