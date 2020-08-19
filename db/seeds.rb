if Rails.env.development?
    if User.count == 0
        User.create(email: "mike@mail.com", password: "mikesaurio")
    end|
    
    Board.create(title: "Board 1", description: "Descripcion del board 1")
    Board.create(title: "Board 2", description: "Descripcion del board 2")
    Board.create(title: "Board 3", description: "Descripcion del board 3")
    Board.create(title: "Board 4", description: "Descripcion del board 4")
    Board.create(title: "Board 5", description: "Descripcion del board 5")
    Board.create(title: "Board 6", description: "Descripcion del board 6")
end