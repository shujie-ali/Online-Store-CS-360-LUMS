class Book < ActiveRecord::Base
  validates :courseTitle, presence: true
    def self.search(search)
      if search
        where("courseTitle LIKE ?", "%#{search}%")
      else
        Book.all
      end
    end
end
