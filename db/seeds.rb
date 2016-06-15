Case.destroy_all
User.destroy_all

u1 = User.create(name:'Pete Ross', handle:'Pedro', email:'pete@pete.com', password:'abc123')

c1 = Case.create(plaintiff: 'GA Instructors', defendant: 'Christian Zamora', number: '16-cv-0610', name: 'GA vs Zamora', venue: 'DTLA', matter_type: 'Product Liability', lead_atty: 'Pitbull Hughes', user: u1)
