require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "https://s3-sa-east-1.amazonaws.com/azk/azk_0.5.1.tar.gz"
  version "0.5.1"
  sha256 "23ea48d4d11025813e2b1ebea7fe9ae02c4747375dacd54f4bc636dee1728406"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64
  depends_on "unfs3"

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

