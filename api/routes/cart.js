const Cart = require("../models/Cart");
const {
  verifyToken,
  verifyTokenAndAuthorization,
  verifyTokenAndAdmin,
} = require("./verifyToken");

const router = require("express").Router();

//CREATE
router.post("/", verifyToken, async (req, res) => {
  try {
    const newCart = await Cart.create({ userId: req.userId });
    res.status(200).json(newCart);
  } catch (err) {
    res.status(500).json(err);
  }
});

//UPDATE (Add Product)
router.put("/:id/add-product", verifyTokenAndAuthorization, async (req, res) => {
  try {
    await Cart.addProduct(req.params.id, req.body);
    res.status(200).json("Product added to the cart");
  } catch (err) {
    res.status(500).json(err);
  }
});

//UPDATE (Update Product Quantity)
router.put("/:id/update-product", verifyTokenAndAuthorization, async (req, res) => {
  try {
    await Cart.updateProduct(req.params.id, req.body.productId, req.body.quantity);
    res.status(200).json("Product quantity updated");
  } catch (err) {
    res.status(500).json(err);
  }
});

//UPDATE (Remove Product)
router.put("/:id/remove-product", verifyTokenAndAuthorization, async (req, res) => {
  try {
    await Cart.removeProduct(req.params.id, req.body.productId);
    res.status(200).json("Product removed from the cart");
  } catch (err) {
    res.status(500).json(err);
  }
});

//DELETE
router.delete("/:id", verifyTokenAndAuthorization, async (req, res) => {
  try {
    await Cart.delete(req.params.id);
    res.status(200).json("Cart has been deleted...");
  } catch (err) {
    res.status(500).json(err);
  }
});

//GET USER CART
router.get("/find/:userId", verifyTokenAndAuthorization, async (req, res) => {
  try {
    const cart = await Cart.findByUserId(req.params.userId);
    res.status(200).json(cart);
  } catch (err) {
    res.status(500).json(err);
  }
});

//GET ALL
router.get("/", verifyTokenAndAdmin, async (req, res) => {
  try {
    const carts = await Cart.findAll();
    res.status(200).json(carts);
  } catch (err) {
    res.status(500).json(err);
  }
});

module.exports = router;
