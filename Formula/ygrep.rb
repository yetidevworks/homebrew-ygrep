# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.1.1-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.1.1-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.1.1-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.1.1/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.1.1"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.1/ygrep-3.1.1-darwin-arm64.tar.gz"
      sha256 "ad1e6fe974005965b591d01e65725bff4908f469b9815e2e08dd083826c58f3b"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.1/ygrep-3.1.1-darwin-x86_64.tar.gz"
      sha256 "384aa85c9b97d9d8f31ed8bb2a803a2cac01d25617cb0e78ce80dbc5d13943ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.1/ygrep-3.1.1-linux-x86_64.tar.gz"
      sha256 "f8a99201f6bd2ba77c760f5dd4b0a92881e7d1c7225bdb412c6023f551a43b6d"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.1/ygrep-3.1.1-linux-aarch64.tar.gz"
      sha256 "5514d11c9404f02d447088dd904fd5d0cad31e82913973b438bb80771390c507"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
