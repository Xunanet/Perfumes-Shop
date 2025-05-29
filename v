<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Perfume Shop</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f5f5f5;
      color: #333;
    }
    header {
      background-color: #111;
      color: white;
      padding: 1rem 2rem;
      text-align: center;
    }
    .container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 2rem;
      padding: 2rem;
    }
    .product {
      background: white;
      border-radius: 10px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      padding: 1rem;
      text-align: center;
    }
    .product img {
      max-width: 100%;
      border-radius: 8px;
    }
    .product h2 {
      font-size: 1.2rem;
      margin: 0.5rem 0;
    }
    .product p {
      font-size: 1rem;
      margin: 0.5rem 0;
    }
    .add-to-cart {
      background-color: #222;
      color: white;
      border: none;
      padding: 0.5rem 1rem;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    .add-to-cart:hover {
      background-color: #555;
    }
    #cart {
      background: #fff;
      padding: 1rem;
      position: fixed;
      top: 0;
      right: 0;
      width: 300px;
      max-height: 100vh;
      overflow-y: auto;
      box-shadow: -2px 0 10px rgba(0,0,0,0.1);
    }
    #cart h3 {
      margin-top: 0;
    }
    #cart ul {
      list-style: none;
      padding: 0;
    }
    #cart li {
      display: flex;
      justify-content: space-between;
      padding: 0.5rem 0;
      border-bottom: 1px solid #ccc;
    }
    #cart-total {
      font-weight: bold;
      text-align: right;
      margin-top: 1rem;
    }
    footer {
      text-align: center;
      padding: 1rem;
      background-color: #111;
      color: white;
    }
  </style>
</head>
<body>
  <header>
    <h1>Perfume Shop Elegante</h1>
  </header>

  <main class="container">
    <div class="product">
      <img src="file-MCqjxwb6GuCHdEJ16ZkjoD" alt="Valentino Born in Roma">
      <h2>Valentino Born in Roma</h2>
      <p>60€</p>
      <button class="add-to-cart" data-name="Valentino Born in Roma" data-price="60">Afegir al carro</button>
    </div>

    <div class="product">
      <img src="file-3CVLZptDpWwXP8AnAFMZWa" alt="Stronger With You Intensely">
      <h2>Stronger With You Intensely</h2>
      <p>60€</p>
      <button class="add-to-cart" data-name="Stronger With You Intensely" data-price="60">Afegir al carro</button>
    </div>

    <div class="product">
      <img src="https://www.chanel.com/images//w_620/bleu-de-chanel-eau-de-parfum-spray-1.jpg" alt="Bleu de Chanel">
      <h2>Bleu de Chanel</h2>
      <p>60€</p>
      <button class="add-to-cart" data-name="Bleu de Chanel" data-price="60">Afegir al carro</button>
    </div>

    <div class="product">
      <img src="https://www.xerjoff.com/1865-home_default/erba-pura.jpg" alt="Xerjoff Erba Pura">
      <h2>Xerjoff Erba Pura</h2>
      <p>60€</p>
      <button class="add-to-cart" data-name="Xerjoff Erba Pura" data-price="60">Afegir al carro</button>
    </div>
  </main>

  <aside id="cart">
    <h3>Carro de compra</h3>
    <ul id="cart-items"></ul>
    <div id="cart-total">Total: 0€</div>
  </aside>

  <footer>
    © 2025 Perfume Shop Elegante. Tots els drets reservats.
  </footer>

  <script>
    const cartItems = document.getElementById('cart-items');
    const cartTotal = document.getElementById('cart-total');
    let total = 0;

    document.querySelectorAll('.add-to-cart').forEach(button => {
      button.addEventListener('click', () => {
        const name = button.dataset.name;
        const price = parseFloat(button.dataset.price);
        const li = document.createElement('li');
        li.textContent = `${name} - ${price.toFixed(2)}€`;
        cartItems.appendChild(li);
        total += price;
        cartTotal.textContent = `Total: ${total.toFixed(2)}€`;
      });
    });
  </script>
</body>
</html>
