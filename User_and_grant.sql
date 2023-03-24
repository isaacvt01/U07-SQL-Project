-- Create an user named isaac

CREATE USER isaac WITH PASSWORD '2808';

-- This user can only select products

GRANT SELECT ON Products TO isaac;
