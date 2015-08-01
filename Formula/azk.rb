require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.14.5.tar.gz"
  version "0.14.5"
  sha256 "a1188fbcc65c8f64121ab8564de6358a270f1ba8a165c72d4508531ebaf8b01d"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

