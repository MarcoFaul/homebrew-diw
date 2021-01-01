class Diw < Formula
  desc "DIW is a CLI utility helper tool."
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.9.1.5/diw-0.9.1.5.tar.gz"
  version "0.9.1.5"
  sha256 "eb3a48d646957e0b1b2d52ea8d54728f4122a2dd0b9a5e3ede2c7b360996dfb1"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      Diw is a CLI utility helper tool made for DIW

      To start diw simply run:

            diw

        Documentation is available at: https://diw-tool.netlify.app/
        Created by Marco Faul
    EOS
  end

    test do
      system "#{bin}/diw"
    end
end
