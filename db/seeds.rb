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
bio.sections << carbon




anthro = Course.create(:title => 'Anthropology')
chem = Course.create(:title => 'Chemistry')
psych = Course.create(:title => 'Psychology')
soci = Course.create(:title => 'Sociology')
human = Course.create(:title => 'Humanities')
engl = Course.create(:title => 'English')
hist = Course.create(:title => 'History')
bus = Course.create(:title => 'Business Management')
chdev = Course.create(:title => 'Child Development')
philo = Course.create(:title => 'Philosophy')
envsci = Course.create(:title => 'Enviromental Science')
astro = Course.create(:title => 'Astronomy')
phys = Course.create(:title => 'Physics')
micbio = Course.create(:title => 'Microbiology')
geol = Course.create(:title => 'Geology')
geogr = Course.create(:title => 'Geography')
physio = Course.create(:title => 'Physiology')
polisci = Course.create(:title => 'Political Science')
anatomy = Course.create(:title => 'Anatomy')
binding.pry
