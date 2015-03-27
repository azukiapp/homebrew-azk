require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.11.0.tar.gz"
  sha256 "80295967f11856660d3e373b58039e93960fc5013b0ae3f1f9342e8eec2f08af"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

