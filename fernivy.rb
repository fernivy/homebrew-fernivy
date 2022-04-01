class Fernivy < Formula
  include Language::Python::Virtualenv
  desc "A uniform tool for measuring energy consumption"
  homepage "https://fernivy.github.io/docs/"
  url "https://github.com/fernivy/fernivy/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "a525aa3db1ecf83d32899b159dd1af6ddd6749629fd9e0ec90a8a2d7682ac354"
  license "Apache-2.0"

  depends_on "python@3.8" => :build

  def install
    system "make", "powerlog"
    bin.install 'powerlog/package-brew/fernivy'
    bin.install 'powerlog/package-brew/powerlog_run.sh'
    bin.install 'powerlog/package-brew/parser.py'
  end

end
