# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.2.2-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.2.2-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.2.2-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.2.2/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.2.2"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.2/ygrep-3.2.2-darwin-arm64.tar.gz"
      sha256 "fca0796177014117abc9e0a59784a9f6dcc2de2232ad43e40f9b2aeea77d22fe"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.2/ygrep-3.2.2-darwin-x86_64.tar.gz"
      sha256 "b3abafb34112f2696c666f9b478628f0723f2e9036814872384ceab43c1aba69"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.2/ygrep-3.2.2-linux-x86_64.tar.gz"
      sha256 "c8700118f9091651e28af1686ac0948d58804dbedcc312117eaa44b6b9d018b0"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.2/ygrep-3.2.2-linux-aarch64.tar.gz"
      sha256 "15c2e4e4c5fb02ae8106f28d4cfa6d5bcaab7d5ac832c72d4d870551f2b8c702"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
