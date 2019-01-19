User.destroy_all
u1 = User.create :email => "ben@qa.ws", :password => "chicken"
u2 = User.create :email => "tod@qa.ws", :password => "chicken"

Thinker.destroy_all
thk1 = Thinker.create(:name => "Immanuel Kant", :birth => "1724-04-22", :death => "1804-02-12", :nationality => "Germany", :era => "Enlightenment", :image => "https://upload.wikimedia.org/wikipedia/commons/f/f2/Kant_gemaelde_3.jpg", :quote => "And we indeed, rightly considering objects of sense as mere appearances, confess thereby that they are based upon a thing in itself, though we know not this thing as it is in itself, but only know its appearances... ")
thk2 = Thinker.create(:name => "Max Weber", :birth => "1864-04-21", :death => "1920-06-14", :nationality => "Germany", :era => "20th Century Social Theory", :image => "https://upload.wikimedia.org/wikipedia/commons/1/16/Max_Weber_1894.jpg", :quote => "The fate of our times is characterized by rationalization and intellectualization and, above all, by the disenchantment of the world.")
thk3 = Thinker.create(:name => "Slavoj Zizek", :birth => "1949-03-21", :nationality => "Slovenia", :era => "20th and 21st Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/9/9f/Slavoj_Zizek_in_Liverpool_cropped.jpg", :quote => "Cinema is the ultimate pervert art. It doesn't give you what you desire - it tells you how to desire.")
thk4 = Thinker.create(:name => "Antonio Gramsci", :birth => "1891-01-22", :death => "1937-04-27", :nationality => "italy", :era => "20th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/e/e6/Gramsci.png", :quote => "Pessimism of the spirit; optimism of the will.")


Theory.destroy_all
thy1 = Theory.create :name => "Transcendental Idealism"
thy2 = Theory.create :name => "Protestant Work Ethic"
thy3 = Theory.create :name => "Weberian Bureaucracy"
thy4 = Theory.create :name => "Ideology As An Unconscious Fantasy That Structures Reality"
thy5 = Theory.create :name => "Cultural Hegemony"

Field.destroy_all
fld1 = Field.create :name => "Epistemology"
fld2 = Field.create :name => "Metaphysics"
fld3 = Field.create :name => "Sociology"
fld4 = Field.create :name => "Economics"
fld5 = Field.create :name => "Historiography"
fld6 = Field.create :name => "Psychology"
fld7 = Field.create :name => "Cultural Studies"
fld8 = Field.create :name => "Psychoanalysis"
fld9 = Field.create :name => "Political Science"
fld10 = Field.create :name => "Critical Theory"
fld11 = Field.create :name => "Historicism"
fld12 = Field.create :name => "Ontology"

# ASSOCIATIONS ################################################

# Thinkers and Theories
thk1.theories << thy1
thk2.theories << thy2 << thy3
thk3.theories << thy4
thk4.theories << thy5

## Theories and Fields
thy1.fields << fld1 << fld2 << fld3 << fld12
thy2.fields << fld3 << fld4 << fld7 << fld5
thy3.fields << fld3 << fld4 << fld6 << fld7
thy4.fields << fld6 << fld7 << fld8 << fld10
thy5.fields << fld3 << fld4 << fld6 << fld7 << fld9 << fld11

## Users and Thinkers
u1.thinkers << thk1 << thk2
u2.thinkers << thk3 << thk4
