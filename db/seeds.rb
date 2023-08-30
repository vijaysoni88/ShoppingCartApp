# Create sample users
User.create(email: 'user@gmail.com', password: '12345')

# Create sample products
Product.create(name: 'mobile', description: 'Description for Product 1', price: 10.99)
Product.create(name: 'TV', description: 'Description for Product 2', price: 19.99)
Product.create(name: 'refrigerator', description: 'Description for Product 3', price: 5.49)

p 'product is created'