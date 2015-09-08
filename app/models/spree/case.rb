class Spree::Case < ActiveRecord::Base
  belongs_to :variant
  belongs_to :vendor
end
