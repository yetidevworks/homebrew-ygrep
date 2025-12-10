# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-1.0.0-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-1.0.0-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-1.0.0-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/1.0.0/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "1.0.0"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v1.0.0/ygrep-1.0.0-darwin-arm64.tar.gz"
      sha256 "8e4e8a0cbd207785f8825f20f5c9f29ec2d320c296aefe1e159f070c8734911c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v1.0.0/ygrep-1.0.0-linux-x86_64.tar.gz"
      sha256 "6cf136dcadbe0ceba2879897faddf5a60fe5d7a4bd12d4f239ef4bb2074aa1cd"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v1.0.0/ygrep-1.0.0-linux-aarch64.tar.gz"
      sha256 "70acb018961c24f06e4fb10f5fdc8a8bd3dad1be6db24c2c27b465ddee631499"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
