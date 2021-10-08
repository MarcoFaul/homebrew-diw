class Diw < Formula
  desc "DIW is a CLI utility helper tool."
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.9.2.5/diw-0.9.2.5.tar.gz"
  version "0.9.2.5"
  sha256 "648282a3840967234db3883ef09649a31cf1f5d76f7e20718b72f952c93e9b9f"

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
