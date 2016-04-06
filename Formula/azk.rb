require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.18.0.tar.gz"
  version "0.18.0"
  sha256 "23a7b4745c77673a9f4c18e37c70766626b3dfcdc0f84a35944f655f96083424"
  
  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    prefix.install Dir['*']
    prefix.install Dir['.nvmrc']
    prefix.install Dir['.dependencies']
    prefix.install Dir['.package-envs']
  end
end

