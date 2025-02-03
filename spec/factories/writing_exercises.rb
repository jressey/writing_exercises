FactoryBot.define do
  factory :writing_exercise do
    duration_in_minutes { 1 }
    category { "Category" }
    prompt { "Prompt" }
    output { "Output" }
  end
end