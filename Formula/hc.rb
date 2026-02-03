class Hc < Formula
  desc "Secure CLI password manager with dual-key encryption and TOTP support"
  homepage "https://github.com/shabaraba/holecard"
  version "0.2.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/holecard/releases/download/v0.2.1/hc-aarch64-apple-darwin.tar.gz"
      sha256 "0db6b08a8e6595301db21dbfce161facfce725e80a770cfcbc7efbfff8447f81"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/shabaraba/holecard/releases/download/v0.2.1/hc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c40cb5adfa34934031a9a37e95dea1625a56d29115be18657d4974a47e6c0b8"
    end
  end

  def install
    bin.install "hc"
  end

  test do
    system "#{bin}/hc", "--version"
  end
end
