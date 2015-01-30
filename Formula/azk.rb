require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.9.2.tar.gz"
  sha256 "c6dc5d0f7cabfe211c67aecbc559e74d045d3b6f879679ceae5bd69c32f6b1a9"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64
  depends_on "unfs3"

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

