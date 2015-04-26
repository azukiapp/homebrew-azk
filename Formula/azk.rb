require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.12.1.tar.gz"
  sha256 "13274fcf1f135ef3a1f8beb2c0ca42648f0dbe92b7665c7d8e560f9bc834bd9b"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

