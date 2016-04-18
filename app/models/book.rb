class Book < ActiveRecord::Base
    def self.search(search)
      if search
        where("courseTitle LIKE ?", "%#{search}%")
      else
        Book.all
      end
    end
end
