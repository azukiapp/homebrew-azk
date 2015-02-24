require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.10.2.tar.gz"
  sha256 "8e1fcd507d2cae5fad0862fef0f8e46e54c756452c34dfe4c4a98f5f91ba4fa1"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

