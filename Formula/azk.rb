require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.16.2.tar.gz"
  version "0.16.2"
  sha256 "72092e22c439f387ba112325de8944dcddade9b24395c49a608903bf543d48d2"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

