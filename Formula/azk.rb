require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.10.0.tar.gz"
  sha256 "4f6db2fcc78a1daf24b9a94d9a44430a717c3f6a7d9c48d2b0c7449b0d307eae"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

