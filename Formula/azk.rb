require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.7.0.tar.gz"
  sha256 "01879a1261de59a8cc4f3c763bb27b7a6049bb7144613ad23b44dbbbd97b6297"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64
  depends_on "unfs3"

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

