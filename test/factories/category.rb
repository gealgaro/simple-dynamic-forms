Factory.sequence :title do |n|
  "category #{n}"
end

Factory.define :category do |category|
  category.title                   { Factory.next :title }
end