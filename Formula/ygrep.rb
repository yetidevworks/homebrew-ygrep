# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.3.0-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.3.0-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.3.0-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.3.0/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.3.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.0/ygrep-3.3.0-darwin-arm64.tar.gz"
      sha256 "e5a7f19dfe1e85c3e62573cf896effe5648a786605689f5322340f0564962c3e"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.0/ygrep-3.3.0-darwin-x86_64.tar.gz"
      sha256 "fca553381520dbe8db19c1392532cae323c56c840a59a6ea3511ab84251df133"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.0/ygrep-3.3.0-linux-x86_64.tar.gz"
      sha256 "92f0e50aebb83f42c5b47b05d25028a788a5e142666d7faa3ec5773ac4e92414"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.3.0/ygrep-3.3.0-linux-aarch64.tar.gz"
      sha256 "a061ad5c76c70d74a8883a062c4bb806a9d3cf3c0821e55f230a83f1c0855f88"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
