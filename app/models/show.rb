class Show < ActiveRecord::Base

    def self.highest_rating 
        self.all.maximum(:rating)
    end

    def self.most_popular_show
        #res =  self.highest_rating
        self.where("rating = ?", self.highest_rating)[0][:name]
    end

    def self.lowest_rating 
        self.all.minimum(:rating)
    end

    def self.least_popular_show
        #res =  self.highest_rating
        self.where("rating = ?", self.lowest_rating)[0][:name]
    end

    def self.ratings_sum 
        self.sum(:rating)
    end

    def self.popular_shows
        self.where("rating >?", 5)
    end

    def self.shows_by_alphabetical_order
        self.order(:name)
    end


end