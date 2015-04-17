require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.12.0.tar.gz"
  sha256 "b31eb64a0cb7c92b6bdd47e10bd6a797dd0a8f80f101ba75b0336c12f503eee2"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end
