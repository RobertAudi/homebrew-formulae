class GitBranchName < Formula
  desc "Optimally fast branch name command for Git"
  homepage "https://github.com/itchyny/git-branch-name"

  head do
    url "https://github.com/itchyny/git-branch-name.git"
    depends_on "automake" => :build
    depends_on "autoconf" => :build
  end

  depends_on "git"

  def install
    system "autoreconf", "-i"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "git", "init", "."
    system "#{bin}/git-branch-name"
    system "git", "branch-name"
  end
end
