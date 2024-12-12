select 'Allobank','ticket',response_code, result,case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_payment.allobank_ticket
where date_entry > date(now())
group by response_code, status;

select 'Allobank','fnb',response_code,result, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_payment.allobank_fnb
where date_entry > date(now())
group by response_code, status;

select 'Allobank', 'refund', response_code, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),min(date_entry), max(date_entry) 
from mtix_payment.allobank_refund
where date_entry > date(now())
group by response_code, status;