# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.1.3-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.1.3-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.1.3-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.1.3/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.1.3"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.3/ygrep-3.1.3-darwin-arm64.tar.gz"
      sha256 "a860d0d24c625074b93bbd85ffbd5cab0deffcd5008db989b839d4541d6ff378"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.3/ygrep-3.1.3-darwin-x86_64.tar.gz"
      sha256 "1232b86c0e02a7224d53ded59054e68686e6cae2d4e9750d527b84ba3004b366"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.3/ygrep-3.1.3-linux-x86_64.tar.gz"
      sha256 "bf379058f341131667caf46b16ba1d0b3514f3f825e9eaa28f4c31509c8435fc"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.1.3/ygrep-3.1.3-linux-aarch64.tar.gz"
      sha256 "4b02d5cc0536faf6ae2c74b1d5bb4316457aa3950b0bf61e2dfa12eeb1a056ec"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
