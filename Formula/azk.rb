require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.17.0.tar.gz"
  version "0.17.0"
  sha256 "9007c51d3c7f5ba5187251b985431376095ff3010bd084e7f156a932701f9d53"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

