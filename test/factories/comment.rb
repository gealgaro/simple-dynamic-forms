Factory.sequence :body do |n|
  "body for comment #{n}"
end

Factory.define :comment do |comment|
  comment.user_id                { Factory(:user).id }
  comment.post_id                { Factory(:post).id }
  comment.body                   { Factory.next :body }
end