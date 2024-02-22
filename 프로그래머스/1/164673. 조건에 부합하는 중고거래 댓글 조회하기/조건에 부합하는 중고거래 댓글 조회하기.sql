-- 코드를 입력하세요
SELECT gb.TITLE, gb.BOARD_ID, REPLY_ID,r.WRITER_ID, r.CONTENTS, DATE_FORMAT(r.CREATED_DATE,'%Y-%m-%d') AS CREATED_DATE
from used_goods_board gb
inner join used_goods_reply r on gb.board_id = r.board_id
where gb.created_date like '2022-10%'
order by r.created_date, gb.title