select 
transaction_hash,
date,
token_address,
value

from {{ source('eth','TOKEN_TRANSFERS')}}