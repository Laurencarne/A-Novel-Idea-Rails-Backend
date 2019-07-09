# USERS
User.create(first_name: "Andy", last_name: "Rogers", username: "andy99")
User.create(first_name: "Lisa", last_name: "Thompson", username: "lisa99")

#CART
Cart.create(user_id: 1)
Cart.create(user_id: 2)

#ORDERS
Order.create(user_id: 1)
Order.create(user_id: 1)
Order.create(user_id: 1)
Order.create(user_id: 2)
Order.create(user_id: 2)
Order.create(user_id: 2)

#WISHLISTS
Wishlist.create(user_id: 1)
Wishlist.create(user_id: 1)
Wishlist.create(user_id: 2)
Wishlist.create(user_id: 2)

#BOOKS
Book.create(google_id: "EjJ6DwAAQBAJ", title: "The Rest of the Story", subtitle: "Testing", author: "Sarah Dessen", isbn: 9780008334406, price: 3.99, image: "http://books.google.com/books/content?id=EjJ6DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api", publisher: "Margaret K. McElderry Books", publishedDate: "2019-11-19", description: "From number one New York Times bestselling author Sarah Dessen comes a big-hearted novel about a girl who reconnects with a part of her family she hasn’t seen since she was a little girl – and falls in love, all over the course of a magical summer.", genre: "Young Adult Fiction", pageCount: 544, printType: "Book", language: "en")
Book.create(google_id: "epaYDwAAQBAJ", title: "Cribsheet", subtitle: "Testing", author: "Cassandra Clare", isbn: 9781782836551, price: 11.09, image: "http://books.google.com/books/content?id=epaYDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api", publisher: "Pan Macmillan", publishedDate: "2019-05-19", description: "THE INSTANT NEW YORK TIMES BESTSELLER 'Emily Oster is the non-judgemental girlfriend holding our hand and guiding us through pregnancy and motherhood. She has done the work to get us the hard facts in a soft, understandable way' Amy Schumer Parenting is full of decisions, nearly all of which can be agonized over. There is an abundance of often-conflicting advice hurled at you from doctors, family, friends, and strangers on the internet. But the benefits of these choices can be overstated, and the trade-offs can be profound. How do you make your own best decision? Armed with the data, Oster finds that the conventional wisdom doesn't always hold up. She debunks myths and offers non-judgemental ways to consider our options in light of the facts. Cribsheet is a thinking parent's guide that empowers us to make better, less fraught decisions - and stay sane in the years before preschool.", snippet: ". . Set in a richly detailed world inspired by ancient Arabia, Hafsah Faizal&#39;s We Hunt the Flame – first in the Sands of Arawiya duology – is a gripping debut of discovery, conquering fear, and taking identity into your own hands.", genre: "Young Adult Fiction", pageCount: 252, printType: "Book", language: "en")

#BOOK_ORDERS
BookOrder.create(order_id: 1, book_id: 1)
BookOrder.create(order_id: 1, book_id: 2)
BookOrder.create(order_id: 2, book_id: 1)
BookOrder.create(order_id: 2, book_id: 2)
BookOrder.create(order_id: 3, book_id: 2)
BookOrder.create(order_id: 4, book_id: 1)
BookOrder.create(order_id: 5, book_id: 2)

#WISH_BOOKS
WishBook.create(book_id: 1, wishlist_id: 1)
WishBook.create(book_id: 1, wishlist_id: 2)
WishBook.create(book_id: 1, wishlist_id: 3)
WishBook.create(book_id: 1, wishlist_id: 4)
WishBook.create(book_id: 2, wishlist_id: 1)
WishBook.create(book_id: 2, wishlist_id: 2)
WishBook.create(book_id: 2, wishlist_id: 3)
WishBook.create(book_id: 2, wishlist_id: 4)

#CART_BOOKS
CartBook.create(cart_id: 1, book_id: 1)
CartBook.create(cart_id: 1, book_id: 1)
CartBook.create(cart_id: 1, book_id: 2)
CartBook.create(cart_id: 2, book_id: 2)
CartBook.create(cart_id: 2, book_id: 2)
CartBook.create(cart_id: 2, book_id: 1)
