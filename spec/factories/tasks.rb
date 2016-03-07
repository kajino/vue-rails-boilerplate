FactoryGirl.define do
  factory :task do
    title "test title"
    content "test content"
    updated_at Time.current.to_s
    created_at Time.current.to_s
  end
end