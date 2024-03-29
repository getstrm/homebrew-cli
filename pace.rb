# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pace < Formula
  desc "Command Line Interface for https://pace.io"
  homepage "https://pace.io"
  version "1.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getstrm/cli/releases/download/v1.25.0/pace_darwin_arm64.tar.gz"
      sha256 "5ddd1fe14d82697e3392621287852fe6fffa620149cd0836904e03baa2b940ed"

      def install
        bin.install "pace"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getstrm/cli/releases/download/v1.25.0/pace_darwin_amd64.tar.gz"
      sha256 "f15d46fbbf0b414cf82485727d6a8ebc21a0c95eaca1e683820c9453aa1ec996"

      def install
        bin.install "pace"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getstrm/cli/releases/download/v1.25.0/pace_linux_arm64.tar.gz"
      sha256 "c9434175fcd16f9bb8ad07b046e0e0b46115b4e86315da30df7a3569533a24cc"

      def install
        bin.install "pace"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getstrm/cli/releases/download/v1.25.0/pace_linux_amd64.tar.gz"
      sha256 "403c9f1f6c5356fdbedf1c4e5e357c2d62971f68244b40f066c0ef9c8b56ca5e"

      def install
        bin.install "pace"
      end
    end
  end

  def caveats
    <<~EOS
      In order to set up auto completion, please follow the instructions below. When you've set up auto completion in the past, you can skip these instructions.

       for bash users
         add the following line to your .bash_profile or .bashrc:
           source <(pace completion bash)

         to load completions for each session, execute once:
           - Linux users: pace completion bash > /etc/bash_completion.d/pace
           - macOS users: pace completion bash > /usr/local/etc/bash_completion.d/pace

       for zsh users
         ensure that shell completion is enabled, then run (only needs to be done once):
           pace completion zsh > "${fpath[1]}/_pace"

       for fish users
         pace completion fish > ~/.config/fish/completions/pace.fish # or $XDG_CONFIG_HOME instead of ~/.config
    EOS
  end

  test do
    system "#{bin}/pace --version"
  end
end
