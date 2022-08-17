class Author < ApplicationRecord
    # 1. All authors have a name
    # 2. No two authors have the same name
    # 3. Author phone numbers are exactly ten digits
    # 4. All posts have a title
    # 5. Post content is at least 250 characters long
    # 6. Post summary is a maximum of 250 characters
    # 7. Post category is either `Fiction` or `Non-Fiction`. This step requires an
    #    `inclusion` validator, which was not outlined in the lesson. You'll need to
    #    refer to the [Rails guide][active record validations] to look up how to use
    #    it.
    # create_table :authors do |t|
    #     t.string :name
    #     t.string :phone_number
    validates :name , presence: true , uniqueness: { case_sensitive: true}
    validates :phone_number , length: {is:10}

end
