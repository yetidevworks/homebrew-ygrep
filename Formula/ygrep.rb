# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.5.0-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.5.0-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.5.0-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.5.0/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.5.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.5.0/ygrep-3.5.0-darwin-arm64.tar.gz"
      sha256 "2224397cc7d84a1ea870f949a7adf69ee2fa84c431e246a83b0143279eee6df3"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.5.0/ygrep-3.5.0-darwin-x86_64.tar.gz"
      sha256 "3edec7ae329ed3551b880c785bbe534272b87344764243091be4c78d4a764703"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.5.0/ygrep-3.5.0-linux-x86_64.tar.gz"
      sha256 "725e94a9e3114b9dd72dd80afd55a8ec1f2d994d6a5170bb1ac8ae9fa13fd6e0"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.5.0/ygrep-3.5.0-linux-aarch64.tar.gz"
      sha256 "ce2e3b265874eb9fad540756f8ddb9f0fe93adcc96aeeee5b909069afe3d7cc5"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
