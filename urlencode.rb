# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Urlencode < Formula
  desc ""
  homepage ""
  version "0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dev-shimada/urlencode/releases/download/v0.0.4/urlencode_Darwin_x86_64.tar.gz"
      sha256 "239c17340ed9a7e5f9caa2cffa3eea1273a6a663b89fa6a441e63624c070254e"

      def install
        bin.install "urlencode"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/urlencode completion bash")
        (bash_completion/"urlencode").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/urlencode completion zsh")
        (zsh_completion/"_urlencode").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/urlencode completion fish")
        (fish_completion/"urlencode.fish").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dev-shimada/urlencode/releases/download/v0.0.4/urlencode_Darwin_arm64.tar.gz"
      sha256 "ca18011a290da8d8713e87ad51ced84cafaae5484626d4ef3f654224bbe98ad1"

      def install
        bin.install "urlencode"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/urlencode completion bash")
        (bash_completion/"urlencode").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/urlencode completion zsh")
        (zsh_completion/"_urlencode").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/urlencode completion fish")
        (fish_completion/"urlencode.fish").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dev-shimada/urlencode/releases/download/v0.0.4/urlencode_Linux_x86_64.tar.gz"
        sha256 "b3e56d070798c19617ed9362387d348e7f0eed968bcb64947cd3f618534622e8"

        def install
          bin.install "urlencode"
          # Install bash completion
          output = Utils.safe_popen_read("#{bin}/urlencode completion bash")
          (bash_completion/"urlencode").write output

          # Install zsh completion
          output = Utils.safe_popen_read("#{bin}/urlencode completion zsh")
          (zsh_completion/"_urlencode").write output

          # Install fish completion
          output = Utils.safe_popen_read("#{bin}/urlencode completion fish")
          (fish_completion/"urlencode.fish").write output
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dev-shimada/urlencode/releases/download/v0.0.4/urlencode_Linux_arm64.tar.gz"
        sha256 "76e8ff9b8952aab9409657f882f2d3dd95ef28ac88a7fea63681aedaa37135e5"

        def install
          bin.install "urlencode"
          # Install bash completion
          output = Utils.safe_popen_read("#{bin}/urlencode completion bash")
          (bash_completion/"urlencode").write output

          # Install zsh completion
          output = Utils.safe_popen_read("#{bin}/urlencode completion zsh")
          (zsh_completion/"_urlencode").write output

          # Install fish completion
          output = Utils.safe_popen_read("#{bin}/urlencode completion fish")
          (fish_completion/"urlencode.fish").write output
        end
      end
    end
  end
end
