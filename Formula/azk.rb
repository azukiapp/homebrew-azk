require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.16.3.tar.gz"
  version "0.16.3"
  sha256 "d598be7385a594b27284e5dc051b895eaf363b6221d79c88679ff48030b2e5b7"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

