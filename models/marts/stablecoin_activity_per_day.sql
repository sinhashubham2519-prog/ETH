SELECT
    t.date,
    t.token_address,
    s.type,
    s.symbol,
    {{ conversion('t.value','s.decimals')}} AS total_usd_value
FROM {{ ref('stg_token_tranfer')}} t
left join {{ ref('stablecoins')}} s
on t.token_address=s.contract_address

where s.contract_address is not null

group by 
t.date,
t.token_address,
s.type,
s.symbol