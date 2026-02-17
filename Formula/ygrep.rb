# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.0.3-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.0.3-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.0.3-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.0.3/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.0.3"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.3/ygrep-3.0.3-darwin-arm64.tar.gz"
      sha256 "e25c6989eddc12865d92c938f8a613c5ca51886c614ea8c9fbf3edc5e8cb3f69"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.3/ygrep-3.0.3-darwin-x86_64.tar.gz"
      sha256 "7f94e19f362b4ac116da47e1e2c1974f24c485829e75052490d4da78e011bc80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.3/ygrep-3.0.3-linux-x86_64.tar.gz"
      sha256 "9cc992d0c83a64f9843c7138abcba958e35429000cef56539697262168a20354"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.3/ygrep-3.0.3-linux-aarch64.tar.gz"
      sha256 "56b04b818cdda36b867d886456fab389f40d5b13c25f1f7018e7cb816fd74b96"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
