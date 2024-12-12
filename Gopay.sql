--Gopay ticket
select 'Gopay','ticket', response_code, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_payment.gopay_ticket
where date_entry > date(now())
group by response_code, status;

--Gopay fnb
select 'Gopay','FNB', response_code, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_payment.gopay_fnb
where date_entry > date(now())
group by response_code, status;

--Gopay refund
select 'Gopay','Refund', response_code, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_payment.gopay_topup
where date_entry > date(now())
group by response_code, status;