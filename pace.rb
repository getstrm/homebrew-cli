# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pace < Formula
  desc "Command Line Interface for https://pace.io"
  homepage "https://pace.io"
  version "1.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getstrm/cli/releases/download/v1.17.1/pace_darwin_arm64.tar.gz"
      sha256 "8d771220ffe2794e024d0bc9b8b31e42e7bdab7bf5e9c9b0298f0f1e9f36f72c"

      def install
        bin.install "pace"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getstrm/cli/releases/download/v1.17.1/pace_darwin_amd64.tar.gz"
      sha256 "41367dd43be30bbfc43b49c04d30889c0dea84e74152890aec057dacb2f555b4"

      def install
        bin.install "pace"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getstrm/cli/releases/download/v1.17.1/pace_linux_arm64.tar.gz"
      sha256 "692dd5a7e2624bed0b4e05f9007ee18d5accd5c2d18ee352b2a8aafffe3a6e98"

      def install
        bin.install "pace"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getstrm/cli/releases/download/v1.17.1/pace_linux_amd64.tar.gz"
      sha256 "94baaaece0898064b0d4361e68f4453d36341632a9f8834620aea2e4c275da11"

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
