SELECT
  miner,
  DATE(timestamp) AS date,
  COUNT(miner) AS total_block_reward
FROM
  `bigquery - public - data.crypto_ethereum_classic.blocks`
GROUP BY
  miner,
  date
HAVING COUNT(miner) > 1;
