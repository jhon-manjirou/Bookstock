class Bookstock < ApplicationRecord
    validates :title, presence: true
    validates :sort, presence: true
    validates :author, presence: true

    default_scope -> { order(title: :asc) }
    scope :select_sort, -> (sort) do    
        return if sort.nil?
        where(sort: sort)
    end

    scope :search_keyword, -> (keyword) do
        return if keyword.nil?
        where('title LIKE ? OR author LIKE ?', "%#{keyword}%", "%#{keyword}%")
    end
end
