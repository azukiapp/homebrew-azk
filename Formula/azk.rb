require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.13.1.tar.gz"
  sha256 "fc7a85abb6b2dfbd92eb35548a3ce7422798c8a284d290e9c0bf61d4f11231b2"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

