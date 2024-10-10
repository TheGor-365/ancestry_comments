class Comment < ApplicationRecord
  has_ancestry ancestry_format: :materialized_path2
  belongs_to :user
  belongs_to :post
end
