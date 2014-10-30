require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.6.0.tar.gz"
  sha256 "4c31899f46ff7255174426bfd6206d8b882bd5b5bac9b4d5b24e61d52e935b2b"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64
  depends_on "unfs3"

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

