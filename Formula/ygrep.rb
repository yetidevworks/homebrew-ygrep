# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.4.0-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.4.0-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.4.0-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.4.0/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.4.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.4.0/ygrep-3.4.0-darwin-arm64.tar.gz"
      sha256 "1cceeb9bb419cf08024fdaaf7a80cd2fb870ac9651227f61d447bc6ff8f55b69"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.4.0/ygrep-3.4.0-darwin-x86_64.tar.gz"
      sha256 "aac5984b3c6319475700685cc61998de7b1f726954a77a4a32db9f19b5acd5b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.4.0/ygrep-3.4.0-linux-x86_64.tar.gz"
      sha256 "555d8940f5e1854747455958afb06790abbca05aeb06326dca747b7788997da0"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.4.0/ygrep-3.4.0-linux-aarch64.tar.gz"
      sha256 "fa8544bf128340ea54deb476ce9d6c8cdf7bc5e7dcb70838fede58f0bbb5977b"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
