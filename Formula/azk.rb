require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.14.6.tar.gz"
  version "0.14.6"
  sha256 "e17cc5fdac9c5434c024fb3e5768f4b1cc3682b1ad70e4a34a8b7f60a64b522b"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

