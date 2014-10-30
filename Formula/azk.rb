require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.6.0.tar.gz"
  sha256 "fd402fc2a9969aafacf148096eb16087724f482e8ccf233287baaf8cefca8082"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64
  depends_on "unfs3"

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

