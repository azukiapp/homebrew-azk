require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.16.0.tar.gz"
  version "0.16.0"
  sha256 "15364e25835ad7d01cadedd88c8637ad5c17275f1d310eea8c5d9f2fdac8e7d4"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

