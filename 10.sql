SELECT genre, country, COUNT(*) AS total_singers
FROM singers
GROUP BY genre, country
ORDER BY total_singers DESC;
