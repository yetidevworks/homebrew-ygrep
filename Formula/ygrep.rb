# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-2.0.3-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-2.0.3-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-2.0.3-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/2.0.3/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "2.0.3"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.3/ygrep-2.0.3-darwin-arm64.tar.gz"
      sha256 "483e03f5f5d50389d808e9d8eb8f0d30cd387c3f05eb18ba349c12de47ef19f3"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.3/ygrep-2.0.3-darwin-x86_64.tar.gz"
      sha256 "d4ea337212bf1898c21ca93bc0e35fc7b80d2a9f99b5f4c1c84c6d6c551ad54b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.3/ygrep-2.0.3-linux-x86_64.tar.gz"
      sha256 "8a7ba3bce2a8dc4b148ba49a4c1bacb38c29e982ddfeb599996a8e8147beeb34"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.3/ygrep-2.0.3-linux-aarch64.tar.gz"
      sha256 "d6d176ce3748ae533cc5bf239f2d67a4b189595c80fea21cd543bcfe8f67d58f"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
