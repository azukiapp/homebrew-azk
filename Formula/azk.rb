require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.7.1.tar.gz"
  sha256 "5f97b4f9ecd35d1fe5ad9dde120ed5fc4ba59af5f49f4a8a0214256b639f3942"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64
  depends_on "unfs3"

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

