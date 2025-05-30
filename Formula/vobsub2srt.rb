require 'formula'

class Vobsub2srt < Formula
  head 'https://github.com/tpwo/VobSub2SRT.git', :using => :git
  homepage 'https://github.com/tpwo/VobSub2SRT'

  depends_on 'cmake'
  depends_on 'tesseract'
  depends_on 'ffmpeg'

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end
end
