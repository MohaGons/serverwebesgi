import React, { useEffect, useState } from "react";

function App() {
  const [products, setProducts] = useState([]);
    let url = `${process.env.SERVER_URL}/api/products`.replace('undefined\/','');

    useEffect(() => {
    fetch(`${url}`)
      .then((response) => {
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        return response.json();
      })
      .then((data) => setProducts(data))
      .catch((error) =>
        console.error("There was a problem with your fetch operation:", error)
      );
  }, []);

  return (
    <div>
      <h1>Products</h1>
      <ul>
        {products.map((product) => (
          <li key={product.id}>
            <h2>{product.name}</h2>
            <p>{product.description}</p>
            <p>{product.price}</p>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default App;
