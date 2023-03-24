import psycopg2
from PIL import Image
from io import BytesIO

# Connect to the database
conn = psycopg2.connect(
    database="clothing_shop",
    user="postgres",
    password="postgres",
    host="localhost",
    port="5432")

# Create a cursor to execute queries in the database
cur = conn.cursor()

# Execute the query to select the image from the database
cur.execute("SELECT image FROM Products WHERE Name = 'Producto de ejemplo'")
result = cur.fetchone()

# Convert the binary data to an image
img = Image.open(BytesIO(result[0]))

# Show the image
img.show()

# Close the connection to the database
cur.close()
conn.close()
