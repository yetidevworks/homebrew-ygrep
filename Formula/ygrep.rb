# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.2.1-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.2.1-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.2.1-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.2.1/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.2.1"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.1/ygrep-3.2.1-darwin-arm64.tar.gz"
      sha256 "61ef2c6883a7588eb9ba5d7c831a29ec4f1ccf9a441a0f8c20a3406dc05421f3"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.1/ygrep-3.2.1-darwin-x86_64.tar.gz"
      sha256 "9b7d54301929d7f656dc2289d19460045d6724a91dfff93152281210d64deac1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.1/ygrep-3.2.1-linux-x86_64.tar.gz"
      sha256 "4056b5e674445b345736ea62e67da117171607a41369ae817eeda15fd9baf829"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.2.1/ygrep-3.2.1-linux-aarch64.tar.gz"
      sha256 "98a8cfb7752d8d81be74118f95ba5c34b4110787bf35d36d9836640c34a9297d"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
