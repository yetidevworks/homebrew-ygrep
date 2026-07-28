# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-4.0.0-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-4.0.0-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-4.0.0-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/4.0.0/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "4.0.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.0/ygrep-4.0.0-darwin-arm64.tar.gz"
      sha256 "ba519130bc3c082a2153bc8163758b072caef2ac5344d24961afaceeaf01cf6d"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.0/ygrep-4.0.0-darwin-x86_64.tar.gz"
      sha256 "a83491274d2daf6e3f85887f2b71d5fa9b7984beafb05fc0e27155dec2ce1d9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.0/ygrep-4.0.0-linux-x86_64.tar.gz"
      sha256 "c5e0ad90ae719c9018f873931c345f301428b2874d4067fba3c5311b3bc9a396"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.0/ygrep-4.0.0-linux-aarch64.tar.gz"
      sha256 "b9054d3e357df6861beacfc5585ece197f06147043cf23362071fb2158f19ba6"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
