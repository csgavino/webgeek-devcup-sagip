user1 = User.create(:name => "Super Volunteer",:email => "test@test.com", :password => "password", :password_confirmation => "password")
user2 = User.create(:name => "Ultra Volunteer",:email => "webgeek@test.com", :password => "password", :password_confirmation => "password")

shelter1 = Shelter.create(:name => "Shelter One", :address => "Address One", :latitude => "", :longitude => "", :capacity => 1000)
shelter2 = Shelter.create(:name => "Shelter Two", :address => "Address Two", :latitude => "", :longitude => "", :capacity => 2000)


Victim.create(:name => "Juan Dela Cruz", :age => 34, :status => 1, :description => "Middle-Aged Man", :shelter_id => shelter1.id, :user_id => user1.id)
Victim.create(:name => "Martin Florante Baja", :age => 21, :status => 1, :description => "Young Professional Man", :shelter_id => shelter1.id, :user_id => user1.id)
Victim.create(:name => "Juan Dela Cruz", :age => 40, :status => 1, :description => "Middle-Aged Man With A Similar Name", :shelter_id => shelter2.id, :user_id => user2.id)
Victim.create(:name => "Marton Gunad Bajardo", :age => 56, :status => 1, :description => "Old-Aged Man", :shelter_id => shelter2.id, :user_id => user2.id)