class Devpin < Formula
  desc "One place per repository for the device every Apple build goes to"
  homepage "https://github.com/iruirc/devpin"
  url "https://github.com/iruirc/devpin/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4217a44e81d1a72bf00d45b98398a0060d5f6bd04625ff0f06a407f3e2327323"
  license "MIT"

  depends_on :macos

  def install
    bin.install "bin/devpin"
  end

  test do
    assert_equal "1.0.0", shell_output("#{bin}/devpin --version").strip
  end
end
