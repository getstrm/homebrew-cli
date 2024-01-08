# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pace < Formula
  desc "Command Line Interface for https://pace.io"
  homepage "https://pace.io"
  version "1.18.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getstrm/cli/releases/download/v1.18.1/pace_darwin_arm64.tar.gz"
      sha256 "4c8c909b88c9ed9fe6f2ca87e43a33bbb8f0ca75c8e6f40eb1ae146fe363b1d7"

      def install
        bin.install "pace"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getstrm/cli/releases/download/v1.18.1/pace_darwin_amd64.tar.gz"
      sha256 "892aac1def154aa1861b5d9622ecc3c038e2e5ff3e74e787442a34c13332e668"

      def install
        bin.install "pace"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getstrm/cli/releases/download/v1.18.1/pace_linux_arm64.tar.gz"
      sha256 "b88944028b9cc020f63d18c2dac694a15e6c956f90b93db1f0974e70ca5b5363"

      def install
        bin.install "pace"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getstrm/cli/releases/download/v1.18.1/pace_linux_amd64.tar.gz"
      sha256 "53223e79e570757f9770604184d115073d4498f857b7542676eadf372de3f9c1"

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
