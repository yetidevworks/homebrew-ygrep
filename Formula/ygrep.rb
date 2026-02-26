# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.2.0-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.2.0-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.2.0-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.2.0/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.2.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.0/ygrep-3.2.0-darwin-arm64.tar.gz"
      sha256 "fddd5d98afd7b07471e202450204a549ce2f3e0035e5aefbb0cdd61c005e49c1"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.0/ygrep-3.2.0-darwin-x86_64.tar.gz"
      sha256 "2761bb19db5b368f11013ee6cfc322cc80e0ea000f1d2294cd86987763d3fbd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.0/ygrep-3.2.0-linux-x86_64.tar.gz"
      sha256 "432727904ecb8d496a361f739f613b031749c8b6cb96f987b13fa42224d39144"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.0/ygrep-3.2.0-linux-aarch64.tar.gz"
      sha256 "9937c62a4ca57f0dbda5f6b6a4cbf602a55d01108ddcb6438f366cc70edabf93"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
