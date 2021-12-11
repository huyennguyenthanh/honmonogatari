# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.delete_all
Book.create(:title => 'One Piece',
    :description => 
    %{
        luffy addventure.
    },
    :num_of_chapters => 5)
  
Book.create(:title => 'Sailormoon',
    :description =>
    %{
        sailormoooooonnn
    },
    :num_of_chapters => 3)
    
Book.create(:title => 'Naruto',
    :description =>
    %{
        nanananakakka 
    },
    :num_of_chapters => 20)
Book.create(:title => 'Doraemon',
    :description =>
    %{
        looooolooo
    },
    :num_of_chapters => 7)
Book.create(:title => 'HxH',
    :description =>
    %{
        Killua and Gon
    },
    :num_of_chapters => 1)