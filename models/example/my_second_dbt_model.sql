
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_dbt_model') }}
<<<<<<< HEAD
where id = 2
=======
where id = 3
>>>>>>> fc0aea87f8f611135ea08886f136f7e9485cb284
