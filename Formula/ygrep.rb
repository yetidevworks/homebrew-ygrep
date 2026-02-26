# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.1.6-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.1.6-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.1.6-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.1.6/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.1.6"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.6/ygrep-3.1.6-darwin-arm64.tar.gz"
      sha256 "7a1b1081e3c648381e5e8d3c7a9eeeaca75c2fdbc993f78d1f830ef2814db08a"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.6/ygrep-3.1.6-darwin-x86_64.tar.gz"
      sha256 "127a3fd1b91d2e877e7bbd687daf71ef438916ff88e261ec83af206e89b19d76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.6/ygrep-3.1.6-linux-x86_64.tar.gz"
      sha256 "6973e5f424f145996dfabd0349c72a9b5456c0ca08699a7373a74c1a1bf28d5b"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.6/ygrep-3.1.6-linux-aarch64.tar.gz"
      sha256 "ff910cd2140583f059d727e5228d525cb08ff3c65e0819e07e6f9bd23bda815e"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
