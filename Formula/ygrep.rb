# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.1.0-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.1.0-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.1.0-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.1.0/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.1.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.0/ygrep-3.1.0-darwin-arm64.tar.gz"
      sha256 "5120be61791c162c708e85607d4222bd8c30f597ff32395460c571bad65f7487"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.0/ygrep-3.1.0-darwin-x86_64.tar.gz"
      sha256 "d6e05b5c0b76119a82407a322b00556ea86bec7784668640480d9144e5aa4bb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.0/ygrep-3.1.0-linux-x86_64.tar.gz"
      sha256 "0694bea6754c2604914b4fad500eba1f05ccf3d3f17f74a0d4850956e3988e36"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.0/ygrep-3.1.0-linux-aarch64.tar.gz"
      sha256 "6e0c031f4593a1b3749e4c0c614f8ed380108b0f63b6ad3b850e72ee31ff1ea1"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
