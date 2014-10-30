require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.6.0.tar.gz"
  sha256 "435b2cf6b075f742a78ee90d32f9488b93736445416323b74714ff9b633246ef"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64
  depends_on "unfs3"

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
  end
end

