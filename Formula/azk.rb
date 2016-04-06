require "formula"

class Azk < Formula
  homepage "http://azk.io"
  url "http://repo-stage.azukiapp.com/mac/azk_0.18.0.tar.gz"
  version "0.18.0"
  sha256 "23a7b4745c77673a9f4c18e37c70766626b3dfcdc0f84a35944f655f96083424"
  head "https://github.com/azukiapp/azk.git"

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64

  def install
    items_path = '.'
    if build.head?
      ENV.deparallelize
      ENV['HOMEBREW_TEMP'] = buildpath
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
