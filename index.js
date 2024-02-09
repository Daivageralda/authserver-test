const express = require('express');
const bodyParser = require('body-parser');
const jwt = require('jsonwebtoken');
const uuid = require('uuid'); // Import library uuid
const User = require('./src/model/userModel'); // Sesuaikan path sesuai struktur proyek Anda

const app = express();
const PORT = 3001;
const SECRET_KEY = 'secretKey'; // Ganti dengan kunci rahasia yang lebih aman
const API_KEY = 'd4add68e-5b1d-4f5b-b4b3-3e8aab4441c7'; // Membuat API key secara dinamis

// Middleware log
const logMiddleware = (req, res, next) => {
  console.log(`[${new Date().toISOString()}] Received ${req.method} request at ${req.url}`);
  next();
};
const sync = require('./src/middleware/sync');
sync();

// Gunakan middleware log
app.use(logMiddleware);
app.use(bodyParser.json());

// Endpoint untuk proses login
app.post('/api/login', async (req, res) => {
  try {
    const apikey = req.headers['api-key']
    const { userid, password } = req.body;

    if (apikey === API_KEY){
    // Cari pengguna berdasarkan username (userid)
    const user = await User.findOne({ where: { userid: userid } });
    
      // Verifikasi username dan password
      if (user && password === user.password) {
        // Jika berhasil, hasilkan token sebagai tanda autentikasi
        const token = jwt.sign({ userid, nama: user.nama, email: user.email, semester: user.semester }, SECRET_KEY, { expiresIn: '1h' });
        // Kirim data pengguna sebagai bagian dari respons
        res.json({ status: 'success', token, userdata: { userid: user.userid, password: user.password,nama: user.nama, email: user.email, semester: user.semester } });
      } else {
        res.status(401).json({ status: 'error', message: 'Login gagal: Username atau password salah' });
      }
    }else{
      res.status(401).json({ status: 'error', message: 'Invalid API' });
    }
  } catch (error) {
    console.error('Terjadi kesalahan pada server:', error);
    res.status(500).json({ status: 'error', message: 'Terjadi kesalahan pada server', data: null });
  }
});

app.listen(PORT, () => {
  console.log(`Server berjalan di http://localhost:${PORT}`);
});