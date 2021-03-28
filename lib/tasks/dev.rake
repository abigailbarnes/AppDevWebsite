desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do

  Painting.destroy_all
  Artist.destroy_all
  User.destroy_all
  Bookmark.destroy_all

  require("date")

  #creating artists
  names = ["Claude Monet", "Henri Matisse", "Vincent van Gogh"]
  birthdates = [ Date.new(1840,11,14), Date.new(1869,12,31), Date.new(1853,3,30)]
  bio1 = "Oscar-Claude Monet was a French painter, a founder of French Impressionist painting and the most consistent and prolific practitioner of the movement's philosophy of expressing one's perceptions before nature, especially as applied to plein air landscape painting."
  bio2 = "Henri Matisse was a French artist, known for both his use of colour and his fluid and original draughtsmanship."
  bio3 = "Vincent Willem van Gogh was a Dutch post-impressionist painter who posthumously became one of the most famous and influential figures in the history of Western art. In a decade, he created about 2,100 artworks, including around 860 oil paintings, most of which date from the last two years of his life."
  bios = [ bio1, bio2, bio3 ]
  ids = [1, 2, 3]

  3.times do |count|
    artist = Artist.new
    artist.id = ids.at(count)
    artist.name = names.at(count)
    artist.birthdate = birthdates.at(count)
    artist.bio = bios.at(count)
    artist.save
  end




  #creating paintings
  claudemonetimage1 = "https://upload.wikimedia.org/wikipedia/commons/2/29/Claude_Monet_037.jpg"
  claudemonetimage2 = "https://upload.wikimedia.org/wikipedia/commons/9/99/Water-Lilies-and-Japanese-Bridge-%281897-1899%29-Monet.jpg"
  claudemonetimage3 = "https://upload.wikimedia.org/wikipedia/commons/a/a5/Claude_Monet%2C_Houses_of_Parliament%2C_London%2C_1900-1903%2C_1933.1164%2C_Art_Institute_of_Chicago.jpg"

  hernimatisseimage1 = "https://upload.wikimedia.org/wikipedia/en/9/98/Matissetoits.gif"
  hernimatisseimage2 = "https://upload.wikimedia.org/wikipedia/en/4/4a/Henri_Matisse%2C_1911-12%2C_La_Fen%C3%AAtre_%C3%A0_Tanger_%28Paysage_vu_d%27une_fen%C3%AAtre_Landscape_viewed_from_a_window%2C_Tangiers%29%2C_oil_on_canvas%2C_115_x_80_cm%2C_Pushkin_Museum.jpg"
  hernimatisseimage3 = "https://upload.wikimedia.org/wikipedia/en/c/cc/Atelier_rouge_matisse_1.jpg"

  vincentvangoghimage1 = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Vincent_van_Gogh_-_De_slaapkamer_-_Google_Art_Project.jpg/1920px-Vincent_van_Gogh_-_De_slaapkamer_-_Google_Art_Project.jpg"
  vincentvangoghimage2 = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/600px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg"
  vincentvangoghimage3 = "https://upload.wikimedia.org/wikipedia/commons/3/31/The_Sower.jpg"

  titles = [ "Coquelicots, La promenade (Poppies)", "Water Lilies and the Japanese bridge", "Two paintings from a series of The Houses of Parliament, London", "Les toits de Collioure", "Window at Tangier", "L'Atelier Rouge", "Bedroom in Arles", "The Starry Night", "The Sower" ]
  dates_painted = [ Date.new(1873), Date.new(1899), Date.new(1900), Date.new(1905), Date.new(1911), Date.new(1911), Date.new(1888), Date.new(1889), Date.new(1888) ]
  artists = [ "Claude Monet" ,"Claude Monet", "Claude Monet", "Henri Matisse", "Henri Matisse", "Henri Matisse", "Vincent van Gogh", "Vincent van Gogh", "Vincent van Gogh" ]
  images = [ claudemonetimage1, claudemonetimage2, claudemonetimage3, hernimatisseimage1, hernimatisseimage2, hernimatisseimage3, vincentvangoghimage1, vincentvangoghimage2, vincentvangoghimage3 ]
  museums = [ "Musée d'Orsay, Paris", "Princeton University Art Museum", "Art Institute of Chicago", "The Hermitage", "The Pushkin Museum of Fine Arts", "The Museum of Modern Art", "Van Gogh Museum", "Museum of Modern Art", "Kröller-Müller Museum" ]
  artist_ids = [1, 1, 1, 2, 2, 2, 3, 3, 3]
  painting_ids = [1, 2, 3, 4, 5, 6, 7, 8, 9]


 9.times do |count|
    painting = Painting.new
    painting.id = painting_ids.at(count)
    painting.title = titles.at(count)
    painting.date_painted = dates_painted.at(count)
    painting.image = images.at(count)
    painting.museum = museums.at(count)
    painting.artist_id = artist_ids.at(count)
    painting.save
 end
end
