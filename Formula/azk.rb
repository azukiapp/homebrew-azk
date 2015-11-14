require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.16.2.tar.gz"
  version "0.16.2"
  sha256 "af3ff0ddbaa5fb2712d30bb1f6ff0514a28759f7faf154d62fa96604877c324b"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

