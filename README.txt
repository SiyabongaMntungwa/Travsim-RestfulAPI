This is a readme file for the RESTful HTTP API.

Please import travsim.sql database into mysql.

The following packages need to be installed in order to run the code
Packages to install:
-Express
-MySQL
-dotenv
-body-parser

Please ensure that user is listening to port 3200.

To ensure that the endpoints run successfully you will need to run them on Postman.

On Postman please run the following endpoints:
http://localhost:3200/sim-cards (Get all sim cards)
http://localhost:3200/orders (Post an order)
http://localhost:3200/orders/:id (Update an order via id)
http://localhost:3200/orders?page=:page&limit=:limit