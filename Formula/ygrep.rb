# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-0.2.3-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-0.2.3-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-0.2.3-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/0.2.3/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "0.2.3"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.2.3/ygrep-0.2.3-darwin-arm64.tar.gz"
      sha256 "86356b64e527ff336cc78c4317ee0d666e0d9a24eecffe2ab30c814e60b7c594"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.2.3/ygrep-0.2.3-linux-x86_64.tar.gz"
      sha256 "62440852d570feeff9c5f695dc7259ea0dc730614e0341afcd2119f56676b056"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v0.2.3/ygrep-0.2.3-linux-aarch64.tar.gz"
      sha256 "0ff0e481e19949358a1d90cc54ca9268eed302d6dd57bd46a2c45d0ef31ac616"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
