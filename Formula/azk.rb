require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.6.1.tar.gz"
  sha256 "5fefbdf9b14aea62658a4751a15865a8a185807fd1ee531b8d82df9418f1d6f8"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64
  depends_on "unfs3"

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

