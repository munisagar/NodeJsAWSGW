const express = require('express');
const router = express.Router();
const pool = require('../db');

// Get all customers
router.get('/', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM customers');
        if (result.rows.length === 0) {
            return res.status(404).json({ message: 'No customers found' });
        }
        res.json(result.rows);
    } catch (err) {
        console.error('Error fetching customers', err);
        res.status(500).send('Error fetching customers');
    }
});

// Get customer by ID
router.get('/:id', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM customers WHERE id = $1', [req.params.id]);
        if (result.rows.length === 0) {
            return res.status(404).json({ message: 'Customer not found' });
        }
        res.json(result.rows[0]);
    } catch (err) {
        console.error('Error fetching customer', err);
        res.status(500).send('Error fetching customer');
    }
});

module.exports = router;
