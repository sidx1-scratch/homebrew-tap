class Sure < Formula
  desc "Your terminal's second opinion - AI-powered command safety analysis"
  homepage "https://github.com/sidx1-scratch/sure"
  license "MIT"
  version "0.1.0"

  on_linux do
    on_intel do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.1.0/sure_0.1.0_linux_amd64.tar.gz"
      sha256 "91420abf64c42c0532393dabd211b2e9deb030e4296887797a673573d4cb86d9"
    end
    on_arm do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.1.0/sure_0.1.0_linux_arm64.tar.gz"
      sha256 "ce9019473b737ecdc43be2a95d2cb2ee275e6dfb0ebad964111ca8a8c153a510"
    end
  end

  on_macos do
    on_intel do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.1.0/sure_0.1.0_darwin_amd64.tar.gz"
      sha256 "1e525d79a86aab1c5c94ef2305941df5a9d208cb1e0323d1e8acd9ab77103617"
    end
    on_arm do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.1.0/sure_0.1.0_darwin_arm64.tar.gz"
      sha256 "4531c6e802dbeeb0f96a96ad5429ce0e9b7feced46b6c9c00efd69a316be02b5"
    end
  end

  def install
    bin.install "sure"
  end

  test do
    system "#{bin}/sure", "--version"
  end
end
