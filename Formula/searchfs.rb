class Searchfs < Formula
  desc "Command line tool to quickly search by filename on entire APFS and HFS+ volumes using the file system catalog."
  homepage "https://sveinbjorn.org/searchfs"
  url "https://sveinbjorn.org/files/software/searchfs.zip"
  head "https://github.com/sveinbjornt/searchfs.git"

  version "0.3.0"
  sha256 "b80126e1ccb87e537307635f369d9ab7ac01a31a67cb1a6a13e6b1db042d9499"

  def install
    if build.head?
      system "make"
    end

    man1.install "searchfs.1"
    bin.install "searchfs"
  end

  test do
    output_help = `#{bin}/searchfs -h 2>&1`.chomp
    assert_match /\Ausage: searchfs/, output_help
  end
end

