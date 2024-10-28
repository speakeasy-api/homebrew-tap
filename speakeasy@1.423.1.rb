# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14231 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.423.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.1/speakeasy_darwin_amd64.zip"
      sha256 "32f8bcf9b892678eed89997c7c38bebde44ae673f4b9fb04abc3fa2169c6a4b8"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.1/speakeasy_darwin_arm64.zip"
      sha256 "0b1c601e925270779327009e426d22be299cbb7f51b57b3644329c1415d22db3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.1/speakeasy_linux_amd64.zip"
        sha256 "321808940c52204546dde97b4467beb323f18af306531533405a5a39604969dc"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.1/speakeasy_linux_arm64.zip"
        sha256 "078eb151cfa5b7431835029f0aafa9ad2604033cc1d94e7fb210e6cd4ea1bd15"

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
