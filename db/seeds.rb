User.destroy_all
u1 = User.create :email => "ben@qa.ws", :password => "chicken"
u2 = User.create :email => "tod@qa.ws", :password => "chicken"

Thinker.destroy_all
t1 = Thinker.create(:name => "Immanuel Kant", :birth => "1724-04-22", :death => "1804-02-12", :nationality => "Germany", :era => "Enlightenment", :image => "https://upload.wikimedia.org/wikipedia/commons/f/f2/Kant_gemaelde_3.jpg", :quote => "And we indeed, rightly considering objects of sense as mere appearances, confess thereby that they are based upon a thing in itself, though we know not this thing as it is in itself, but only know its appearances... ")
t2 = Thinker.create(:name => "Max Weber", :birth => "1864-04-21", :death => "1920-06-14", :nationality => "Germany", :era => "20th Century Social Theory", :image => "https://upload.wikimedia.org/wikipedia/commons/1/16/Max_Weber_1894.jpg", :quote => "The fate of our times is characterized by rationalization and intellectualization and, above all, by the disenchantment of the world.")
t3 = Thinker.create(:name => "Slavoj Zizek", :birth => "1949-03-21", :nationality => "Slovenia", :era => "20th and 21st Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/9/9f/Slavoj_Zizek_in_Liverpool_cropped.jpg", :quote => "Cinema is the ultimate pervert art. It doesn't give you what you desire - it tells you how to desire.")
t4 = Thinker.create(:name => "Antonio Gramsci", :birth => "1891-01-22", :death => "1937-04-27", :nationality => "Italy", :era => "20th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/e/e6/Gramsci.png", :quote => "Pessimism of the spirit; optimism of the will.")
t5 = Thinker.create(:name => "Michel Foucault", :birth => "1926-10-15", :death => "1984-06-25", :nationality => "France", :era => "20th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/en/5/52/Foucault5.jpg", :quote => "In its function, the power to punish is not essentially different from that of curing or educating.")
t6 = Thinker.create(:name => "Epictetus", :nationality => "Greece", :era => "Ancient Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/0/00/Epicteti_Enchiridion_Latinis_versibus_adumbratum_%28Oxford_1715%29_frontispiece.jpg", :quote => "Endure and Renounce")
t7 = Thinker.create(:name => "Thomas Hobbes", :birth => "1588-04-05", :death => "1679-12-04", :nationality => "England", :era => "17th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/d/d8/Thomas_Hobbes_%28portrait%29.jpg", :quote => "It is not wisdom but Authority that makes a law.")
t8 = Thinker.create(:name => "Giabattista Vico", :birth => "1688-06-23", :death => "1744-01-23", :nationality => "Italy", :era => "18th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/7/7a/GiambattistaVico.jpg", :quote => "What is true is precisely what is made")
t9 = Thinker.create(:name => "Georg Wilhelm Friedrich Hegel", :birth => "1770-08-27", :death => "1831-11-14", :nationality => "Germany", :era => "19th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/0/08/Hegel_portrait_by_Schlesinger_1831.jpg", :quote => "We learn from history that we do not learn from history.
")
t10 = Thinker.create(:name => "David Hume", :birth => "1711-05-07", :death => "1776-08-25", :nationality => "Scottish", :era => "18th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/e/ea/Painting_of_David_Hume.jpg", :quote => "Reason is, and ought only to be the slave of the passions, and can never pretend to any other office than to serve and obey them.")
t11 = Thinker.create(:name => "David Ricardo", :birth => "1772-04-18", :death => "1823-09-11", :nationality => "England", :era => "19th Century Economics", :image => "https://upload.wikimedia.org/wikipedia/commons/d/dc/Portrait_of_David_Ricardo_by_Thomas_Phillips.jpg", :quote => "Money is neither a material to work upon nor a tool to work with.")
t12 = Thinker.create(:name => "Ferdinand Tonnies", :birth => "1855-07-26", :death => "1936-04-09", :nationality => "Germany", :era => "19th Century Social Theory", :image => "https://upload.wikimedia.org/wikipedia/commons/4/4a/Ferdinand_T%C3%B6nnies.jpg", :quote => "Gemeinschaft should be understood as a living organism, Gesellschaft as a mechanical aggregate and artifact.")
t13 = Thinker.create(:name => "Plato", :birth => "", :death => "", :nationality => "Greece", :era => "Ancient Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/8/88/Plato_Silanion_Musei_Capitolini_MC1377.jpg", :quote => "Appearance Has More Force Than Reality.")
t14 = Thinker.create(:name => "Karl Marx", :birth => "1818-05-05", :death => "1883-03-14", :nationality => "Germany", :era => "19th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/d/d4/Karl_Marx_001.jpg", :quote => "What is certain is that I myself am not a Marxist.")
t15 = Thinker.create(:name => "Adam Smith", :birth => "1723-06-16", :death => "1790-07-17", :nationality => "Scotland", :era => "Enlightenment", :image => "https://upload.wikimedia.org/wikipedia/commons/4/43/Adam_Smith_The_Muir_portrait.jpg", :quote => "Virtue is excellence, something uncommonly great and beautiful, which rises far above what is vulgar and ordinary.")
t16 = Thinker.create(:name => "Karl Polanyi", :birth => "1886-10-25", :death => "1964-04-23", :nationality => "Hungary", :era => "20th Century Social Theory", :image => "https://cdn-ed.versobooks.com/blog_posts/000004/015/maxresdefault-1-.jpg", :quote => "…no society could stand the effects of such a system of crude fictions even for the shortest stretch of time unless its human and natural substance as well as its business organization was protected against the ravages of this satanic mill.")
t17 = Thinker.create(:name => "Jean-Jacques Rousseau", :birth => "1712-06-28", :death => "1778-07-02", :nationality => "France", :era => "18th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/en/4/4c/Maurice_Quentin_de_La_Tour_-_Portrait_of_Jean-Jacques_Rousseau_-_adjusted.jpg", :quote => "Happiness: a good bank account, a good cook, and a good digestion.")
t18 = Thinker.create(:name => "John Locke", :birth => "1632-08-29", :death => "1704-10-28", :nationality => "England", :era => "Enlightenment", :image => "https://upload.wikimedia.org/wikipedia/commons/b/b8/John_Locke.jpg", :quote => "Being all equal and independent, no one ought to harm another in his life, health, liberty, or possessions.")
t19 = Thinker.create(:name => "Emile Durkheim", :birth => "1858-04-15", :death => "1917-11-15", :nationality => "France", :era => "19th Century Social Theory", :image => "https://upload.wikimedia.org/wikipedia/commons/2/24/Emile_Durkheim.jpg", :quote => "When mores are sufficient, laws are unnecessary; when mores are insufficient, laws are unenforceable.")
t20 = Thinker.create(:name => "Edward W. Said", :birth => "1935-11-01", :death => "2003-09-25", :nationality => "Palestine", :era => "20th Century Philosophy", :image => "https://tankmagazine.com/media/506356/p44_tnk_08_2003-1.jpg?width=920&format=webp", :quote => "Humanism is the only - I would go so far as saying the final- resistance we have against the inhuman practices and injustices that disfigure human history.")
t21 = Thinker.create(:name => "Friedrich Nietzsche", :birth => "1844-10-15", :death => "1900-08-25", :nationality => "Germany", :era => "19th Century Philosophy", :image => "https://upload.wikimedia.org/wikipedia/commons/1/1b/Nietzsche187a.jpg")

Theory.destroy_all
ty1 = Theory.create :name => "Transcendental Idealism"
ty2 = Theory.create :name => "Protestant Work Ethic"
ty3 = Theory.create :name => "Weberian Bureaucracy"
ty4 = Theory.create :name => "Ideology As An Unconscious Fantasy That Structures Reality"
ty5 = Theory.create :name => "Cultural Hegemony"
ty6 = Theory.create :name => "Biopower"
ty7 = Theory.create :name => "Power-Knowledge"
ty8 = Theory.create :name => "Empirical Realism"
ty9 = Theory.create :name => "Iron Cage"
ty10 = Theory.create :name => "Governmentality"
ty11 = Theory.create :name => "Prohairesis"
ty12 = Theory.create :name => "State of Nature"
ty13 = Theory.create :name => "Verum esse ipsum factum"
ty14 = Theory.create :name => "Master-Slave Dialectic"
ty15 = Theory.create :name => "Absolute Idealism"
ty16 = Theory.create :name => "Hegelian Dialectic"
ty17 = Theory.create :name => "Science of Man"
ty18 = Theory.create :name => "Comparative Advantage"
ty19 = Theory.create :name => "Gemeinschaft and Gesellschaft"
ty20 = Theory.create :name => "Platonic Philosophy"
ty21 = Theory.create :name => "Innatism"
ty22 = Theory.create :name => "Platonic Forms"
ty23 = Theory.create :name => "Dialetical Materialism"
ty24 = Theory.create :name => "Theory of Alienation"
ty25 = Theory.create :name => "Class Struggle"
ty26 = Theory.create :name => "Invisible Hand"
ty27 = Theory.create :name => "Substantivism"
ty28 = Theory.create :name => "Embeddedness"
ty29 = Theory.create :name => "Double Movement"
ty30 = Theory.create :name => "General Will"
ty31 = Theory.create :name => "Labour Theory of Property"
ty32 = Theory.create :name => "Consent of the Governed"
ty33 = Theory.create :name => "Sacred–profane dichotomy"
ty34 = Theory.create :name => "Collective consciousness"
ty35 = Theory.create :name => "Orientalism"
ty36 = Theory.create :name => "Will to Power"
ty37 = Theory.create :name => "Ubermensch"
ty38 = Theory.create :name => "Nietzschean affirmation"

Field.destroy_all
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
f14 = Field.create :name => "Literary Criticism"
f15 = Field.create :name => "Political Economy"
f16 = Field.create :name => "Stoicism"
f17 = Field.create :name => "Liberalism"
f18 = Field.create :name => "Idealism"
f19 = Field.create :name => "Jurisprudence"
f20 = Field.create :name => "Constructivism"
f21 = Field.create :name => "Anthropology"
f22 = Field.create :name => "Aesthetics"

Favourite.destroy_all

# ASSOCIATIONS ################################################

# Thinkers and Theories
t1.theories << ty1 << ty8
t2.theories << ty2 << ty3 << ty9
t3.theories << ty4
t4.theories << ty5
t5.theories << ty6 << ty7 << ty10
t6.theories << ty11
t7.theories << ty12
t8.theories << ty13
t9.theories << ty14 << ty15 << ty16
t10.theories << ty17
t11.theories << ty18
t12.theories << ty19
t13.theories << ty20 << ty21 << ty22
t14.theories << ty23 << ty24 << ty25
t15.theories << ty26
t16.theories << ty27 << ty28 << ty29
t17.theories << ty30
t18.theories << ty31 << ty32
t19.theories << ty33 << ty34
t20.theories << ty35
t21.theories << ty36 << ty37 << ty38




# Theories and Fields
ty1.fields << f1 << f2 << f3 << f12 << f18
ty2.fields << f3 << f4 << f7 << f5
ty3.fields << f3 << f4 << f6 << f7
ty4.fields << f6 << f7 << f8 << f10
ty5.fields << f3 << f4 << f6 << f7 << f9 << f11
ty6.fields << f1 << f3 << f6 << f9 << f13 << f14
ty7.fields << f1 << f3 << f5 << f7 << f9
ty8.fields << f1 << f2 << f13 << f18
ty9.fields << f3
ty10.fields << f3 << f6 << f7 << f5
ty11.fields << f16
ty12.fields << f9 << f13 << f19
ty13.fields << f1 << f3 << f20
ty14.fields << f5 << f18 << f1 << f11
ty15.fields << f5 << f18 << f1 << f11
ty16.fields << f5 << f18 << f1 << f11
ty17.fields << f1 << f2 << f13 << f17
ty18.fields << f15 << f4
ty19.fields << f3 << f20
ty20.fields << f1 << f2 << f12 << f13 << f9 << f22
ty21.fields << f1 << f13 << f22
ty22.fields << f1 << f12 << f18 << f22
ty23.fields << f1 << f4 << f5 << f11 << f15
ty24.fields << f4 << f5 << f9 << f15
ty25.fields << f3 << f4 << f5 << f6 << f15
ty26.fields << f4 << f13 << f15
ty27.fields << f3 << f4 << f5 << f15 << f21
ty28.fields << f3 << f4 << f5 << f15 << f21
ty29.fields << f3 << f4 << f5 << f15 << f21
ty30.fields << f17 << f19 << f9 << f13
ty31.fields << f1 << f2 << f9 << f17 << f19
ty32.fields << f1 << f2 << f9 << f17 << f19
ty33.fields << f3 << f6 << f7 << f13
ty34.fields << f3 << f6 << f7 << f13
ty35.fields << f5 << f6 << f7 << f14 << f20
ty36.fields << f1 << f2 << f6 << f22
ty37.fields << f1 << f2 << f6 << f22
ty38.fields << f1 << f2 << f6 << f22
