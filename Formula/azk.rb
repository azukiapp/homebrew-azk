require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo.azukiapp.com/mac/azk_0.16.3.tar.gz"
  version "0.16.3"
  sha256 "d598be7385a594b27284e5dc051b895eaf363b6221d79c88679ff48030b2e5b7"
  head "https://github.com/azukiapp/azk.git"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    items_path = '.'
    if build.head?
      ENV.deparallelize
      ENV['HOMEBREW_TEMP']=buildpath
      system 'make', '-e', 'package_mac'

      items_path = 'package/brew/*/usr/lib/azk'
      items = %w{ bin lib node_modules shared package.json npm-shrinkwrap.json CHANGELOG.md LICENSE README.md }
    else
      items = ['*']
    end
    items += %w{ .dependencies .nvmrc }

    items.each do |item|
      prefix.install Dir["#{items_path}/#{item}"]
    end
  end

  def post_install
    rmtree './package' if build.head?
  end

  test do
    system "azk", "version"
  end
end
