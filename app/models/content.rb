class Content < ActiveRecord::Base
	validates_length_of :section1, :in => 1..500, :allow_blank => true
	validates_length_of :section2, :in => 1..500, :allow_blank => true
	validates_length_of :section3, :in => 1..500, :allow_blank => true
	validates_length_of :section4, :in => 1..500, :allow_blank => true
	validates_length_of :section5, :in => 1..500, :allow_blank => true
	validates_length_of :section6, :in => 1..500, :allow_blank => true
	validates_length_of :section7, :in => 1..500, :allow_blank => true
	validates_length_of :section8, :in => 1..500, :allow_blank => true
	validates_length_of :section9, :in => 1..500, :allow_blank => true
end
