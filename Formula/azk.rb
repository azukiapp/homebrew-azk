require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.12.0.tar.gz"
  sha256 "cb34dc85efdbde5007174cb1a97fca9fe3b149d8f22fd50d4776656faa7fb4ac"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

