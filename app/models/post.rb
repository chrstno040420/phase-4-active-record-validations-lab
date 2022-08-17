class Post < ApplicationRecord

    # create_table :posts do |t|
    #     t.string :title
    #     t.text :content
    #     t.text :summary
    #     t.string :category
  
    validates :title , presence: true , exclusion:{in:["True Facts"]}
    validates :content , length:{minimum: 250}
    validates :summary , length:{maximum:250}
    validates :category , presence: true , inclusion: {in:["Fiction" , "Non-Fiction"]}


end
