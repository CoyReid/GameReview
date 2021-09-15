class Game < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def rating
        self.reviews.first.score
    end

    def self.nintendo
        Game.all.select{|game| game.platform == "N64" || game.platform == "Wii" || game.platform == "Switch" || game.platform == "Wii-U" || game.platform == "Gamecube" || game.platform =="Nintendo-DS"}
    end

    def self.xbox
        Game.all.select{|game| game.platform == "Xbox" || game.platform == "Xbox 360" || game.platform == "Xbox One"}
    end

    def self.playstation
        Game.all.select{|game| game.platform == "PlayStation" || game.platform == "PlayStation 2" || game.platform == "PlayStation 3" || game.platform == "PlayStation 4"}
    end

    def self.pc
        Game.all.select{|game| game.platform == "PC"}
    end

    def self.all_by_rating
        Game.all.max_by(Game.all.length) {|game| game.rating}
    end

end