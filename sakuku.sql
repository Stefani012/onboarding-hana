--sakuku ticket
select 'sakuku','ticket', response_code, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_application.sakuku_ticket
where date_entry > date(now())
group by response_code, status;

--sakuku fnb
select 'sakuku','fnb', response_code, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_application.sakuku_fnb
where date_entry > date(now())
group by response_code, status;

--sakuku refund
select 'sakuku','Top up', response_code, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_application.sakuku_topup
where date_entry > date(now())
group by response_code, status;

--sakuku migration
select 'sakuku','migrasi', response_code, case status when 1 then 'Pending' when 2 then 'Success' when 3 then 'Failed' when 4 then 'Billed' when 5 then 'Refund' when 6 then 'User timeout' when 7 then 'Request Refund' else status end as status, count(1),  min(date_entry), max(date_entry) 
from mtix_application.sakuku_migration
where date_entry > date(now())
group by response_code, status;