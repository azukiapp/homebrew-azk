require "formula"

class AzkRc < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.16.0-rc.1+20151021.tar.gz"
  version "0.16.0-rc.1+20151021"
  sha256 "8b09d7744f36b27aef76bc6265376a390c4a90269a451c05885f8a700073a73e"
  
  conflicts_with 'azukiapp/azk/azk', :because => 'installation of azk in path'
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

