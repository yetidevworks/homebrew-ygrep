# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-2.0.2-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-2.0.2-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-2.0.2-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/2.0.2/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "2.0.2"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.2/ygrep-2.0.2-darwin-arm64.tar.gz"
      sha256 "373a7c0f1e812be4857c6d87bc0b8477fd6d58a5496ef0e6fc2de66ee14473a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.2/ygrep-2.0.2-linux-x86_64.tar.gz"
      sha256 "f741947248d6a28ae2c475b1064c17b39ded68dffef6c670658fccc33c1255d4"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v2.0.2/ygrep-2.0.2-linux-aarch64.tar.gz"
      sha256 "7bfa72d8e2e80debf3ca2d52f28a7427c656951cb3854136df27cb49d8e104a5"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
