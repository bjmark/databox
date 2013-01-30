class Item < ActiveRecord::Base
  serialize :data, Hash
end
