require 'net/http'

class FetchYoutubeTranscript
  def initialize(options = {})
    @video_id = options.delete(:video_id)
  end

  def download_transcript
    Net::HTTP.get(URI("http://video.google.com/timedtext?lang=en&v=#{@video_id}"))
  end

  def download_transcript_to(output)
    File.open(output, "w").write(download_transcript)
  end
end
