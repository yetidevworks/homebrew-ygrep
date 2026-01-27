# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-2.0.0-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-2.0.0-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-2.0.0-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/2.0.0/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "2.0.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.0/ygrep-2.0.0-darwin-arm64.tar.gz"
      sha256 "d91e39089dcaf706032ae4dc25f4ee440a5932b20641277b0efb8876335bc1ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.0/ygrep-2.0.0-linux-x86_64.tar.gz"
      sha256 "00ece430f2e63b2564412d1efee49b37cd51fe46482a26a2526057a3e1c073f7"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.0/ygrep-2.0.0-linux-aarch64.tar.gz"
      sha256 "36ea480a974bef3e1f4b00fb9a227451d06e4a958843feda1accd7dbbfea85bd"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
