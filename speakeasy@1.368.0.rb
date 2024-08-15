# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13680 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.368.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.368.0/speakeasy_darwin_amd64.zip"
      sha256 "51bdd8bd276b340e51c6b32a2eb69fd526d92ddec090b9d2f30b23b914653889"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.368.0/speakeasy_darwin_arm64.zip"
      sha256 "767953bd1ccf3395ba21d68637185534eba0be50a96f96e8b2424f6fd27fcd65"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.368.0/speakeasy_linux_amd64.zip"
        sha256 "b53fcc0111be96f53e4c3fd81ae8666b206c9422f851a8782330b5c10b78bdc7"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.368.0/speakeasy_linux_arm64.zip"
        sha256 "dc52597714c5518e007cc3504a18318bf7b655194c3d219d841de6844e7f98a7"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end