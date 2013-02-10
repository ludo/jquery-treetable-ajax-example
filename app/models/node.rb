class Node < ActiveRecord::Base
  include ActsAsTree

  attr_accessible :kind, :modified_at, :name, :parent, :parent_id, :size

  acts_as_tree order: :name
end
