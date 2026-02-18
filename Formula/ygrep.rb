# Additional binaries available for direct download:
# - Linux ARMv7 (32-bit ARM): ygrep-3.0.5-linux-armv7.tar.gz
# - Linux x86_64 musl (Alpine/static): ygrep-3.0.5-linux-x86_64-musl.tar.gz
# - Linux ARM64 musl (Alpine/static): ygrep-3.0.5-linux-aarch64-musl.tar.gz
# Download from: https://github.com/yetidevworks/ygrep/releases/download/3.0.5/

class Ygrep < Formula
  desc "Fast, local, indexed code search for AI coding assistants"
  homepage "https://github.com/yetidevworks/ygrep"
  license "MIT"
  version "3.0.5"
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.5/ygrep-3.0.5-darwin-arm64.tar.gz"
      sha256 "8b268cced1dd586ea7e4542d5feead397a7b46c405f12b40dc5ad5619f022f55"
    end
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.5/ygrep-3.0.5-darwin-x86_64.tar.gz"
      sha256 "b5eda42ed9dbd7cdbbf33f18db94803d6a064f7d1cb33d05d9a0dbca5d681cc0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.5/ygrep-3.0.5-linux-x86_64.tar.gz"
      sha256 "a29ed733149f84ff5413e354a42df3b90003eba2bc105654163a7ec1db483015"
    end
    on_arm do
      url "https://github.com/yetidevworks/ygrep/releases/download/v3.0.5/ygrep-3.0.5-linux-aarch64.tar.gz"
      sha256 "8211da601e9faeea80d468d0c7aa489f5a011e66c7669ae546243259988df23a"
    end
  end

  def install
    bin.install "ygrep"
  end

  test do
    assert_match "ygrep", shell_output("#{bin}/ygrep --version")
  end
end
