require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.16.1.tar.gz"
  version "0.16.1"
  sha256 "2d074c4f2dc32b763a5fe0123e515e654e32d61457a239a7c3a0f2302f01b663"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

