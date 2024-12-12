select 'ccdc','ticket',response_code,response_message, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_payment.cc_ticket
where date_entry > date(now())
group by response_code, status;

select 'ccdc','FNB',response_code,response_message, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_payment.cc_fnb
where date_entry > date(now())
group by response_code, status;

select 'ccdc','reversal',response_code,response_message, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_payment.cc_reversal
where date_entry > date(now())
group by response_code, status;