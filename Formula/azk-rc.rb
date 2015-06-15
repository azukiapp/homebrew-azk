require "formula"

class AzkRc < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.14.0-rc.2+20150615.tar.gz"
  version "0.14.0-rc.2+20150615"
  sha256 "79ba0fe92e828912b87c2e34dc35b33f2f2f2983f73ba92e6e080efa98fa4a37"
  
  conflicts_with 'azukiapp/azk/azk', :because => 'installation of azk in path'
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

