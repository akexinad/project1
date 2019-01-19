User.destroy_all
u1 = User.create :email => "ben@qa.ws", :password => "chicken"
u2 = User.create :email => "tod@qa.ws", :password => "chicken"

Thinker.destroy_all
t1 = Thinker.create(:name => "Immanuel Kant", :birth => "1724-04-22", :death => "1804-02-12", :nationality => "Germany", :era => "Enlightenment", :image => "https://upload.wikimedia.org/wikipedia/commons/f/f2/Kant_gemaelde_3.jpg", :quote => "And we indeed, rightly considering objects of sense as mere appearances, confess thereby that they are based upon a thing in itself, though we know not this thing as it is in itself, but only know its appearances... ")
t2 = Thinker.create(:name => "Max Weber", :birth => "1864-04-21", :death => "1920-06-14", :nationality => "Germany", :era => "20th Century Social Theory", :image => "https://upload.wikimedia.org/wikipedia/commons/1/16/Max_Weber_1894.jpg", :quote => "The fate of our times is characterized by rationalization and intellectualization and, above all, by the disenchantment of the world.")
t3 = Thinker.create(:name => "Slavoj Zizek", :birth => "1949-03-21", :nationality => "Slovenia", :era => "20th and 21st Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/9/9f/Slavoj_Zizek_in_Liverpool_cropped.jpg", :quote => "Cinema is the ultimate pervert art. It doesn't give you what you desire - it tells you how to desire.")
t4 = Thinker.create(:name => "Antonio Gramsci", :birth => "1891-01-22", :death => "1937-04-27", :nationality => "italy", :era => "20th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/e/e6/Gramsci.png", :quote => "Pessimism of the spirit; optimism of the will.")
t5 = Thinker.create(:name => "Michel Foucault", :birth => "1926-10-15", :death => "1984-06-25", :nationality => "France", :era => "20th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/en/5/52/Foucault5.jpg", :quote => "In its function, the power to punish is not essentially different from that of curing or educating.")


Theory.destroy_all
ty1 = Theory.create :name => "Transcendental Idealism"
ty2 = Theory.create :name => "Protestant Work Ethic"
ty3 = Theory.create :name => "Weberian Bureaucracy"
ty4 = Theory.create :name => "Ideology As An Unconscious Fantasy That Structures Reality"
ty5 = Theory.create :name => "Cultural Hegemony"
ty6 = Theory.create :name => "Biopower"
ty7 = Theory.create :name => "Power-Knowledge nexus"

# Field.destroy_all
f1 = Field.create :name => "Epistemology"
f2 = Field.create :name => "Metaphysics"
f3 = Field.create :name => "Sociology"
f4 = Field.create :name => "Economics"
f5 = Field.create :name => "Historiography"
f6 = Field.create :name => "Psychology"
f7 = Field.create :name => "Cultural Studies"
f8 = Field.create :name => "Psychoanalysis"
f9 = Field.create :name => "Political Science"
f10 = Field.create :name => "Critical Theory"
f11 = Field.create :name => "Historicism"
f12 = Field.create :name => "Ontology"
f13 = Field.create :name => "Ethics"
f14 = Field.create :name => "Literature"

# ASSOCIATIONS ################################################

# Thinkers and Theories
t1.theories << ty1
t2.theories << ty2 << ty3
t3.theories << ty4
t4.theories << ty5
t5.theories << ty6 << ty7

## Theories and Fields
ty1.fields << f1 << f2 << f3 << f12
ty2.fields << f3 << f4 << f7 << f5
ty3.fields << f3 << f4 << f6 << f7
ty4.fields << f6 << f7 << f8 << f10
ty5.fields << f3 << f4 << f6 << f7 << f9 << f11
ty6.fields << f1 << f3 << f6 << f9 << f13 << f14
ty7.fields << f1 << f3 << f5 << f7 << f9

## Users and Thinkers
u1.thinkers << t1 << t2 << t5
u2.thinkers << t3 << t4
