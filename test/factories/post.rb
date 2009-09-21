Factory.sequence :title do |n|
  "title for post number #{n}"
end

Factory.sequence :body do |n|
  "body for post number #{n}"
end

Factory.define :post do |post|
  post.user_id                { Factory(:user).id }
  post.category_id            { Factory(:category).id }
  post.title                  { Factory.next :title }
  post.body                   { Factory.next :body }
end