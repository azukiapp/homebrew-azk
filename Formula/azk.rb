require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.14.0.tar.gz"
  version "0.14.0"
  sha256 "66caf512a5221ef16878f7a77bda89ca12edfdcb85e6178869be9e3b67d69b63"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

