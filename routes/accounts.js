const express = require('express');
const router = express.Router();
const pool = require('../db');

// Get all accounts
router.get('/', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM accounts');
        if (result.rows.length === 0) {
            return res.status(404).json({ message: 'No accounts found' });
        }
        res.json(result.rows);
    } catch (err) {
        console.error('Error fetching accounts', err);
        res.status(500).send('Error fetching accounts');
    }
});

// Get account by ID
router.get('/:id', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM accounts WHERE id = $1', [req.params.id]);
        if (result.rows.length === 0) {
            return res.status(404).json({ message: 'Account not found' });
        }
        res.json(result.rows[0]);
    } catch (err) {
        console.error('Error fetching account', err);
        res.status(500).send('Error fetching account');
    }
});

module.exports = router;
