class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string  :artist
      t.string  :title
      t.text  :description
      t.string  :filepath

      t.timestamps
    end
    data = FasterCSV.read("lib/kd.csv", :headers=>false)
    row_count = data.length.to_s
    data.each_with_index{|row,i|
      puts(format("importing row %s of %s: %s", i.to_s, row_count, row[1]))
      Song.create!(:filepath=>row[0], :title=>row[1], :artist=>row[2], :description=>row[3])
    }
  end

  def self.down
    drop_table :songs
  end
end
