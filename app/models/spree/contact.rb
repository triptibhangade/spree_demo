module Spree
  class Contact < Spree::Base
    has_one_attached :image
  end
end