const express = require('express');
const router = express.Router();
const pool = require('../db');

// Get all transactions
router.get('/', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM transactions');
        if (result.rows.length === 0) {
            return res.status(404).json({ message: 'No transactions found' });
        }
        res.json(result.rows);
    } catch (err) {
        console.error('Error fetching transactions', err);
        res.status(500).send('Error fetching transactions');
    }
});

// Get transaction by ID
router.get('/:id', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM transactions WHERE id = $1', [req.params.id]);
        if (result.rows.length === 0) {
            return res.status(404).json({ message: 'Transaction not found' });
        }
        res.json(result.rows[0]);
    } catch (err) {
        console.error('Error fetching transaction', err);
        res.status(500).send('Error fetching transaction');
    }
});

module.exports = router;
