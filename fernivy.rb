class Fernivy < Formula
  include Language::Python::Virtualenv
  desc "A uniform tool for measuring energy consumption"
  homepage "https://fernivy.github.io/docs/"
  url "https://github.com/fernivy/fernivy/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "01013303ed6a956f57a892583321b5ef7d1840777f3c87fc21e23b4b3c1422f9"
  license "Apache-2.0"

  depends_on "python@3.8" => :build

  def install
    system "make", "powerlog"
    bin.install 'powerlog/package-brew/fernivy'
    bin.install 'powerlog/package-brew/powerlog_run.sh'
    bin.install 'powerlog/package-brew/parser.py'
  end

end
