class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :fields

  # attribute :meow do |o|
  #   "#{o.title} meow"
  # end
end
