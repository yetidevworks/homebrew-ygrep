# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.0.0-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.0.0-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.0.0-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.0.0/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.0.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.0/ygrep-3.0.0-darwin-arm64.tar.gz"
      sha256 "fe951d354a1838cc734c11d02249ccd33827f12840b58c4c16d417d59575d486"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.0/ygrep-3.0.0-darwin-x86_64.tar.gz"
      sha256 "e169a6238e27d681ea4a21a789b0aa77766a8e6260512ef91c6b73d587c70dbe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.0/ygrep-3.0.0-linux-x86_64.tar.gz"
      sha256 "0a288e0bc33e8e430f16cc472e15123f23c06f42c73932a234e54a1d7647964c"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.0/ygrep-3.0.0-linux-aarch64.tar.gz"
      sha256 "214654e8b70f7ae6482605bdb7131044a13f0cf4c470002202e986b3fb3447aa"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
