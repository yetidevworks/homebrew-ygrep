# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-1.0.1-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-1.0.1-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-1.0.1-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/1.0.1/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "1.0.1"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v1.0.1/ygrep-1.0.1-darwin-arm64.tar.gz"
      sha256 "be4a767e044c1c19df64f2cc7c750e073591212807f2c4a09d1503bb5ef6dc56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v1.0.1/ygrep-1.0.1-linux-x86_64.tar.gz"
      sha256 "09f4f760e189940fea1c513644c2ae642e9ef1d16ecff5c721f86474b882354d"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v1.0.1/ygrep-1.0.1-linux-aarch64.tar.gz"
      sha256 "e0f760fe13a960d7f8cdb123239cfe829bb1c4026a006ac71439ae58984460a3"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
