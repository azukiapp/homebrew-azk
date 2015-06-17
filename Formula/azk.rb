require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.14.1.tar.gz"
  version "0.14.1"
  sha256 "3f8ee46ee3be55304f433b1ded20e2303f9150a81b14171884818e921edf55ba"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

