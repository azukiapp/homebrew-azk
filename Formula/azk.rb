require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.17.0.tar.gz"
  version "0.17.0"
  sha256 "aa03f76782b88b285340e31299c2a6cb881645248538dfec50ec8186644614ad"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

