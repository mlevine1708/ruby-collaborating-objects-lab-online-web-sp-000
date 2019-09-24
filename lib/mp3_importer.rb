class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def import
    @files.each {|files| Song.new_by_filename(files)}
  end

def files
  @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
end

end
