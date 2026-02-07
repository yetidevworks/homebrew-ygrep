# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-2.0.1-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-2.0.1-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-2.0.1-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/2.0.1/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "2.0.1"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.1/ygrep-2.0.1-darwin-arm64.tar.gz"
      sha256 "06261f93a251049b80535fdbfcade1977c7da8796864e838389252de9b7601e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.1/ygrep-2.0.1-linux-x86_64.tar.gz"
      sha256 "f82f02737d8cb8c3d011dfd21823a91f247328ad254e7a317e1481f3a29477c9"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.1/ygrep-2.0.1-linux-aarch64.tar.gz"
      sha256 "aea3ba3fc5df8a6453f7dcef93245ce79ac1608dbac1749fec1db7c64f7a9c9f"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
