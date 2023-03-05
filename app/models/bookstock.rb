class Bookstock < ApplicationRecord
    # default_scope -> { order(title: :asc) }
    scope :select_sort, -> (sort) do    
        return if sort.nil?
        where(sort: sort)
    end
end
