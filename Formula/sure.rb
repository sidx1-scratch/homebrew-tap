class Sure < Formula
  desc "Your terminal's second opinion - AI-powered command safety analysis"
  homepage "https://github.com/sidx1-scratch/sure"
  license "MIT"
  version "0.1.0"

  on_linux do
    on_intel do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.1.0/sure_0.1.0_linux_amd64.tar.gz"
      # sha256 will need to be updated after release artifacts are built
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.1.0/sure_0.1.0_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_macos do
    on_intel do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.1.0/sure_0.1.0_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.1.0/sure_0.1.0_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "sure"
  end

  test do
    system "#{bin}/sure", "--version"
  end
end
