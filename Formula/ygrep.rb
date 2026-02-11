# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.0.1-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.0.1-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.0.1-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.0.1/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.0.1"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.1/ygrep-3.0.1-darwin-arm64.tar.gz"
      sha256 "2f1c5ac7c7117d51b6bf7962a64b90d1dfcc37cc54794e96501d50e241854d15"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.1/ygrep-3.0.1-darwin-x86_64.tar.gz"
      sha256 "e9d77221b0293f9508b9fce987aabab9c388f1edbb82aefdc17799ce227d9a5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.1/ygrep-3.0.1-linux-x86_64.tar.gz"
      sha256 "5b5df5d52763ebd11031517e87f4a84e9ea95e304fab436fcebe77d0c3b32678"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.1/ygrep-3.0.1-linux-aarch64.tar.gz"
      sha256 "020886a86db8991d5556eca0c6b867e9f9db3853808106c36be06be7d86a95cf"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
