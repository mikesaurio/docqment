if Rails.env.development?
    User.create(email: "mike@mail.com", password: "12345")
end