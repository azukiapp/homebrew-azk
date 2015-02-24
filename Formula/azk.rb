require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.10.1.tar.gz"
  sha256 "035d2e35f38f224ba18e160abf13cc1270734ac3dfd4b45549d1bd8f0fc2c1a4"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

