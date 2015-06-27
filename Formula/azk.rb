require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.14.4.tar.gz"
  version "0.14.4"
  sha256 "319637f3ebbf28710e31394a705e8e8e0c1f086d0d120c6574b7dc45bb8890b0"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

