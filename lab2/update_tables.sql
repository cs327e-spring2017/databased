\c imdb
UPDATE actor SET gender = 'M' WHERE gender = '1';
UPDATE actor SET gender = 'F' WHERE gender is null;

/* Movie type updates not applicable in our database design */