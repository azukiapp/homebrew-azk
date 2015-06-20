require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.14.3.tar.gz"
  version "0.14.3"
  sha256 "d2974fcdd18c96165abb4086288c5722f3b41f5dc255321897b4e112d354e828"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

