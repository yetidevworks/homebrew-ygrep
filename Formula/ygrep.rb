# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.3.2-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.3.2-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.3.2-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.3.2/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.3.2"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.2/ygrep-3.3.2-darwin-arm64.tar.gz"
      sha256 "bf01366b2f50a8c1fbaedcaada3a0cc17db68fa5d3d3a2f0afc0c3bfaa765e55"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.2/ygrep-3.3.2-darwin-x86_64.tar.gz"
      sha256 "8bb7779cb910e4b2791545e89a5fd653ab7a444ceaf76cd157ab7fc7370068b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.2/ygrep-3.3.2-linux-x86_64.tar.gz"
      sha256 "385ea2fbc9c0a3186edc0ad2e3c038650f2b4eb8dc1b17deb2ed8733aa3f6193"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.2/ygrep-3.3.2-linux-aarch64.tar.gz"
      sha256 "6875a955d42df3e749bf40dfe62d4a89b0f9d7aec4390bc28d8518ef019283cf"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
