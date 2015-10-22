require "formula"

class AzkRc < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.16.0-rc.2+20151022.tar.gz"
  version "0.16.0-rc.2+20151022"
  sha256 "f4eb7c8f55d6e6f946addbb4a82990ec90659c358c01f90c3d7e316c13baaae3"
  
  conflicts_with 'azukiapp/azk/azk', :because => 'installation of azk in path'
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

