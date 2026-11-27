class Devpin < Formula
  desc "One place per repository for the device every Apple build goes to"
  homepage "https://github.com/iruirc/devpin"
  url "https://github.com/iruirc/devpin/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "de33b9c1320f64aa22dd414dc62d1302e5b5480c54cbac243431e71b60677d0a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "bin/devpin"
  end

  test do
    assert_equal "1.0.0", shell_output("#{bin}/devpin --version").strip
  end
end
