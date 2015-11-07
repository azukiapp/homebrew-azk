require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.16.1.tar.gz"
  version "0.16.1"
  sha256 "4d94efefa7197b9531b4069aa7ce1c1ad4381fe719858047a65f9624087199d6"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

