const mongoose = require("mongoose");

const connectDB = async () => {
  try {
    await mongoose.connect("mongodb+srv://Knight:gzxlDuI2S877ov5C@cluster0.5qdu5nh.mongodb.net/homeAppDB?retryWrites=true&w=majority");
    console.log("✅ MongoDB connected successfully");
  } catch (err) {
    console.error("❌ MongoDB connection failed:", err.message);
    process.exit(1);
  }
};

module.exports = connectDB;
