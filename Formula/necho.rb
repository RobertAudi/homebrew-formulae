class Necho < Formula
  desc "minimal, sensible alternatives to echo(1)"
  homepage "https://github.com/chneukirchen/necho"
  head "https://github.com/chneukirchen/necho.git"

  def install
    system "make", "all", "PREFIX=#{prefix}"
    system "make", "install", "PREFIX=#{prefix}"
  end

  def caveats
    <<~EOS
      These tools use writev(2) syscalls for efficient output.  This generally
      works fine, but there is a problem with using this function when writing
      to the Linux proc(5) filesystem: only the first buffer will be regarded
      as a write.

      Therefore,

            jecho 60 >/proc/sys/kernel/panic

      will work, but

            jecho 6 0 >/proc/sys/kernel/panic

      will just be regarded as a write of ‘6’.
    EOS
  end

  test do
    %w[necho zecho qecho jecho secho].each do |cmd|
      system "#{bin}/#{cmd}"
    end
  end
end
