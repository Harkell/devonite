class Content < ActiveRecord::Base
	validates_length_of :header1, :in => 1..500, :allow_blank => true
	validates_length_of :header2, :in => 1..500, :allow_blank => true
	validates_length_of :section1header1, :in => 1..500, :allow_blank => true
	validates_length_of :section1paragraph1, :in => 1..500, :allow_blank => true
	validates_length_of :section2header1, :in => 1..500, :allow_blank => true
	validates_length_of :section2paragraph1, :in => 1..500, :allow_blank => true
	validates_length_of :section2paragraph2, :in => 1..500, :allow_blank => true
	validates_length_of :section3header1, :in => 1..500, :allow_blank => true
	validates_length_of :section3paragraph1, :in => 1..500, :allow_blank => true
end
