require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.14.2.tar.gz"
  version "0.14.2"
  sha256 "bb6f317e02328023e582e6beba9cfbbea901ee7b8613eebed0c58236ac3ccfc7"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

