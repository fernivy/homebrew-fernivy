# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Fernivy < Formula
  include Language::Python::Virtualenv
  desc "A uniform tool for measuring energy consumption"
  homepage "https://fernivy.github.io/docs/"
  url "https://github.com/fernivy/fernivy/archive/refs/tags/v1.1.1-alpha.tar.gz"
  sha256 "74957f6e2fcf517fffecf0abd0f85742afd1a7ba32f3cb40001860ee0939335a"
  license "Apache-2.0"

  depends_on "python@3.8" => :build
  depends_on "python@3.8"

  # resource "PyYAML" do
  #   url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
  #   sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
  # end

  def install
    # venv = virtualenv_create(libexec, "python3")
    # venv.pip_install resources

    system "make", "powerlog"
    bin.install 'powerlog/package/fernivy'
    bin.install 'powerlog/package/powerlog_run.sh'
    bin.install 'powerlog/package/parser.py'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test fernivy`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
