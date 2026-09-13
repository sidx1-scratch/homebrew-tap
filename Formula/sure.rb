class Sure < Formula
  desc "Your terminal's second opinion - AI-powered command safety analysis"
  homepage "https://github.com/sidx1-scratch/sure"
  license "MIT"
  version "0.2.0"

  on_linux do
    on_intel do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.2.0/sure_0.2.0_linux_amd64.tar.gz"
      sha256 "c32361424a2ccf4011e792892ca6bf8537f4c9143518eddb21eb0fe1ac8f8499"
    end
    on_arm do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.2.0/sure_0.2.0_linux_arm64.tar.gz"
      sha256 "715e534cf63d7af4f102b6b24bb13489b80f49d2a7d3210ad26c5407b8676ba9"
    end
  end

  on_macos do
    on_intel do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.2.0/sure_0.2.0_darwin_amd64.tar.gz"
      sha256 "f134283eadc896e315e26cb84da52591014dc5d45646bc7babbe2e10db04d610"
    end
    on_arm do
      url "https://github.com/sidx1-scratch/sure/releases/download/v0.2.0/sure_0.2.0_darwin_arm64.tar.gz"
      sha256 "6705e8aaa69850fef5f09ec96da8032adc9ee358724d12ac7e454d024e5647a0"
    end
  end

  # Releases contain static, prebuilt binaries, so installing from the tap does
  # not require Go, a compiler, or any kernel changes on the user's machine.
  def install
    bin.install "sure"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sure --version")
  end
end
