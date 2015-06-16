require "formula"

class AzkRc < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.14.0-rc.3+20150615.tar.gz"
  version "0.14.0-rc.3+20150615"
  sha256 "ea9c55e7907427aceec6d743d6d69222aee58bcebe84ff0a29fe5662cc60074b"
  
  conflicts_with 'azukiapp/azk/azk', :because => 'installation of azk in path'
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

