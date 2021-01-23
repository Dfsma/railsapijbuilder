class Product < ApplicationRecord
  include PgSearch
  belongs_to :category

  pg_search_scope :search_by_term, against: [:name, :price],
  using: {
    tsearch: {
      any_word: true,
      prefix: true
    }
  }

end
