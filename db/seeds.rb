# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def digest(string)
  cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                BCrypt::Engine.cost
  BCrypt::Password.create(string, cost: cost)
end    
    
Admin.create(first_name: 'admin', last_name: 'admin', email: 'admin@onepoint.com', password_digest: digest('admin') ) 
Book.create(courseTitle:'Mechanics', courseCode:'Phy-100',instructor:'Amer Iqbal',school:'LUMS-SSE',ourPrice:'1300Rs',canotechPrice:'1500',numCopies:'5',bookTitle:'Ohanian',author:'Hans C. Ohanian, John T. Markert ',edition:'3', dept:'Physics', image:'https://openmerchantaccount.com/img2/51ZXQifzNIL._SX387_BO1,204,203,200_.jpg',)
Book.create(courseTitle:'Chemistry', courseCode:'Chem-100',instructor:'Habib ur Rehman',school:'LUMS-SSE',ourPrice:'400Rs',canotechPrice:'600',numCopies:'5',bookTitle:'Chem course Pack',author:'Jimmy carter ',edition:'3', dept:'Chemistry', image:'https://openmerchantaccount.com/img2/0321706218.jpg',)
Book.create(courseTitle:'Biology', courseCode:'Bio-100',instructor:'M.Tariq',school:'LUMS-SSE',ourPrice:'130Rs',canotechPrice:'150',numCopies:'5',bookTitle:'Biology course Pack',author:'Coolney K',edition:'3', dept:'Biology', image:'https://openmerchantaccount.com/img2/9781857281323.jpg',)
Book.create(courseTitle:'Pak Studies', courseCode:'SS-100',instructor:'Sana Malik',school:'LUMS',ourPrice:'1300Rs',canotechPrice:'1500',numCopies:'5',bookTitle:'Pak studies course Pack',author:'Ali khan',edition:'3', dept:'Social Sciences', image:'https://openmerchantaccount.com/img2/9780195472295_1.jpg',)
Book.create(courseTitle:'Intro to Programming', courseCode:'CS-200',instructor:'M.Awais',school:'LUMS-SSE',ourPrice:'1300Rs',canotechPrice:'1500',numCopies:'5',bookTitle:'intro to Programming',author:'Kelly cooperlly cooper',edition:'3', dept:'Computer Science', image:'https://openmerchantaccount.com/img2/dfsdasd.png',)
Book.create(courseTitle:'Biology of cells', courseCode:'Bio-200',instructor:'M.Tariq',school:'LUMS-SSE',ourPrice:'130Rs',canotechPrice:'150',numCopies:'5',bookTitle:'Molecular biology',author:'Coolney K',edition:'3', dept:'Computer Science', image:'https://openmerchantaccount.com/img2/516WkxEjNXL._SX408_BO1,204,203,200_.jpg',)
Book.create(courseTitle:'Data Structure', courseCode:'CS-202',instructor:'Ihsen Qazi',school:'LUMS-SSE',ourPrice:'130Rs',canotechPrice:'150',numCopies:'5',bookTitle:'Data structures',author:'Coolney K',edition:'3', dept:'Computer Science', image:'https://openmerchantaccount.com/img2/516SsvD957L._SX373_BO1,204,203,200_.jpg',)
Book.create(courseTitle:'Advance Programming', courseCode:'Cs-300',instructor:'Juniad Haroon',school:'LUMS-SSE',ourPrice:'130Rs',canotechPrice:'150',numCopies:'5',bookTitle:'Advance programming',author:'Sheldon Cooper',edition:'3', dept:'Computer Science', image:'https://openmerchantaccount.com/img2/1104041.jpg',)
Book.create(courseTitle:'intro to Anthropology', courseCode:'Anth-100',instructor:'Sana Malik',school:'LUMS',ourPrice:'130Rs',canotechPrice:'150',numCopies:'5',bookTitle:'Intro to Anthropology',author:'Sheldon Cooper',edition:'3', dept:'Computer Science', image:'https://openmerchantaccount.com/img2/fsada.jpg',)

