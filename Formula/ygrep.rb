# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-2.0.4-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-2.0.4-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-2.0.4-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/2.0.4/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "2.0.4"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.4/ygrep-2.0.4-darwin-arm64.tar.gz"
      sha256 "c1d269bec431707a232b16a3e28d128188450d2f81dcb26eaa90ac983c5765ba"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.4/ygrep-2.0.4-darwin-x86_64.tar.gz"
      sha256 "8e8fe49dfdbb74711e743bcd9ba48bdeedb6c1f370853a48b3f709f2e86e895f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.4/ygrep-2.0.4-linux-x86_64.tar.gz"
      sha256 "b4ee5bc6bc5549dd2b515c14db4f8bef54609afc3482f15f6e93a64fa63e1d00"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.4/ygrep-2.0.4-linux-aarch64.tar.gz"
      sha256 "2a4ff88679edd436bea2e93b1326f18c25e45cbf867a5f9247b1499b1e9a8a84"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
