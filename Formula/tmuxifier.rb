class Tmuxifier < Formula
  desc "Powerful session, window & pane management for Tmux."
  homepage "https://github.com/jimeh/tmuxifier"

  url "https://github.com/jimeh/tmuxifier/archive/v0.12.2.tar.gz"
  sha256 "a5ed6001f242e5cf27f702691828dd03124ea8cc1269569cad61c043ee949e82"

  head "https://github.com/jimeh/tmuxifier.git"

  bottle :unneeded

  depends_on "tmux"

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
