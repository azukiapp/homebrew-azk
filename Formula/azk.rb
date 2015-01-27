require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.9.0.tar.gz"
  sha256 "36d6eb426167df77c5140299ee9c2325ff7d171fe49fa0936f8265e2ad912093"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64
  depends_on "unfs3"

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

