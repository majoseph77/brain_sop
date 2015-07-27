# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


bio = Course.create(:title => 'Biology', :num_sections => 43, :section_name => 'The Cell')

cell = Section.create(:name => 'The Cell', :quiz => '1. What are the three basics of a cell?', :video_uri => 'W7cO2UKCrgY')
carbon = Section.create(:name => 'Carbon', :quiz => '1. Question', :video_uri => 'dDBU0lg-HYE')



binding.pry

bio.sections << carbon

