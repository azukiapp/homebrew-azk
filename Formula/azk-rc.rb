require "formula"

class AzkRc < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.14.0-rc.1+20150614.tar.gz"
  version "0.14.0-rc.1+20150614"
  sha256 "094b8dc6cc6914fd6bac6b80f02012994e3c6e1825bce7451597b872f6582f47"
  
  conflicts_with 'azukiapp/azk/azk', :because => 'installation of azk in path'
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
  end
end

