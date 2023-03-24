import psycopg2
import io

# Connect to the database
conn = psycopg2.connect(database="clothing_shop", user="postgres", password="postgres", host="localhost", port="5432")

# Open the image file
with open('imagen.png', 'rb') as f:
    image = f.read()

# Create an object to store the image in memory
buf = io.BytesIO(image)

# Create a cursor to execute queries in the database
cur = conn.cursor()

# Execute the query to insert the image into the database
cur.execute("INSERT INTO Products (Name, Description, Price, BrandID, CategoryID, Image) VALUES (%s, %s, %s, %s, %s, %s)",
            ("Producto de ejemplo", "Descripción del producto", 9.99, 1, 2, psycopg2.Binary(buf.read())))

# Confirm the changes
conn.commit()

# Close the connection to the database
conn.close()
