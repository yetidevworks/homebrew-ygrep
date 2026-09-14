# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-4.0.2-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-4.0.2-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-4.0.2-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/4.0.2/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "4.0.2"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.2/ygrep-4.0.2-darwin-arm64.tar.gz"
      sha256 "5404682ad62f97cd46962e63d1ae2401d04bef62a4d126dc5c05135a031aed83"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.2/ygrep-4.0.2-darwin-x86_64.tar.gz"
      sha256 "6302211d6a7a9a0640dc2f249bd161a2a4492ce0798df86dc4f060a2398b48f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.2/ygrep-4.0.2-linux-x86_64.tar.gz"
      sha256 "186d37727f7ffcbad67d0d1fe7761b1df09c88bc85a54aa361178357a3faff74"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v4.0.2/ygrep-4.0.2-linux-aarch64.tar.gz"
      sha256 "b92c713993618429bd5f084d4635470f4fd4e107489bb2cb4f4d9e6f092e8a1f"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
