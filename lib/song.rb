class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create
   song = self.new
   song.save << song
   song
  end

  def Song.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def Song.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def Song.find_by_name(name)
    @@all.each do |song|
      if song.name == name
        return song
      end
    #  return false
    end
  end
end
