# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-4.0.4-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-4.0.4-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-4.0.4-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/4.0.4/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "4.0.4"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.4/ygrep-4.0.4-darwin-arm64.tar.gz"
      sha256 "7ce0f06a5a2830764e5ca1096b5f673b658915e6d7c710c175731725f0428924"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.4/ygrep-4.0.4-darwin-x86_64.tar.gz"
      sha256 "85b7f652b6f3a476f02ac40b66ef3b68f1ca2daea4155f81e32120a96c1def98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.4/ygrep-4.0.4-linux-x86_64.tar.gz"
      sha256 "20fd81b651b4f8a21d7f1a6e86e221603b95dc124a58bc1fae5dc97e10656cad"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.4/ygrep-4.0.4-linux-aarch64.tar.gz"
      sha256 "651903bc4e0413e513a8027b3d0851b597b0c5c5f84f6b0e76bd0c0408b0e1eb"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
