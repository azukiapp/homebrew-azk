require "formula"

class AzkRc < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.16.0-rc.1+20151021.tar.gz"
  version "0.16.0-rc.1+20151021"
  sha256 "aee4f5a601f6e2aa81dbdbfbe1414cd5eb5b98ee7cee3bbbf51dffa42c4ae3d4"
  
  conflicts_with 'azukiapp/azk/azk', :because => 'installation of azk in path'
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

