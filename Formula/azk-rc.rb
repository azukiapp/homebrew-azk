require "formula"

class AzkRc < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.18.0-rc.1+20160406.tar.gz"
  version "0.18.0-rc.1+20160406"
  sha256 "6a391eea2d5e1b5a145fd45f1b301adbb729061e6e2dd7ea85d54040d8e98388"

  conflicts_with 'azukiapp/azk/azk', :because => 'installation of azk in path'

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
    prefix.install Dir['.package-envs']
  end
end

