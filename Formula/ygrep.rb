# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.2.4-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.2.4-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.2.4-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.2.4/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.2.4"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.4/ygrep-3.2.4-darwin-arm64.tar.gz"
      sha256 "286f1eb39f645ba8f68ff3b38f4b6047e7287c0616e6ca7e83f2238b72e3dec7"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.4/ygrep-3.2.4-darwin-x86_64.tar.gz"
      sha256 "aabe86514f694d23be7808c33046d89d06d9bb8cc06f42ee953f91158743824f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.4/ygrep-3.2.4-linux-x86_64.tar.gz"
      sha256 "348145de893d2a149dff73a0fe39fd56eea83b6e0af604f2e6322edd42609dbf"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.4/ygrep-3.2.4-linux-aarch64.tar.gz"
      sha256 "d5fa4dc94cab65b8700adc25c6f51a81b14ecb475ea87a608eafbeaaaae29bad"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
