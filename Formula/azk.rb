require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.15.0.tar.gz"
  version "0.15.0"
  sha256 "1874199a0293a3e71fe163a5b42a029e12e431182d7ea277e4fe716bc000140e"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

