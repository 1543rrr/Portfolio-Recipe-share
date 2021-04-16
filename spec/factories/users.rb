FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@example"}
    password              {"a000000"}
    password_confirmation {password}
    first_name            {"山田"}
    last_name             {"太朗"}
  end
end
