create or replace view v_dictionary as
select i.iKEY AS id,i.NAME AS name,i.DICID AS dicId,i.ODB AS odb from item i where (i.DISABLED is null or (i.DISABLED <> '1'))
union select DISTINCT '0','��','gender','2' from dual
union select DISTINCT '1','Ů','gender','3' from dual
union select DISTINCT '0','��ĸ�׵�������ʲô��','problem','0'  from dual
union select DISTINCT '1','�����׵�������ʲô��','problem','1' from dual
union select DISTINCT '2','���Ĵ�ѧ������ʲô��','problem','2' from dual
union select DISTINCT '3','���ĳ����������','problem','3'  from dual
union select DISTINCT '4','����ϲ���ĵ�Ӱ��ʲô��','problem','4'from dual
union select DISTINCT '5','����ϲ��������ʲô��','problem','5' from dual
union select DISTINCT '6','����','problem','6' from dual
union select DISTINCT '0','���˻�Ӧ��','apptype','0'   from dual
union select DISTINCT '1','����֧��Ӧ��','apptype','1'   from dual
union select DISTINCT '2','�˻���ȫӦ��','apptype','2'   from dual
union select DISTINCT '0','��','istop','0'  from dual
union select DISTINCT '1','��','istop','1' from dual
union select DISTINCT '0','��','ispublish','0'  from dual
union select DISTINCT '1','��','ispublish','1' from dual
union select DISTINCT '0','������','isAnonymous','0'   from dual
union select DISTINCT '1','�Ǽ�����','isAnonymous','1' from dual
union select c.cardno||'',c.cardno||'',memberid,'' from card c where c.Remove='0'  -- ��ǰ��¼�˵Ŀ��ż���
union select c.cardno||'',c.cardno||'',memberid||'anonymous','' from card c where c.isAnonymous='0' and c.Remove='0'
union select distinct e.USERID AS USERID,e.USERNAME AS USERNAME,'users' AS users,'odb' AS odb from employee e where ((e.SCRAP != '0') or (e.SCRAP is null))
union select DISTINCT '1','����֤','certificationtype','1'  from dual
union select DISTINCT '3','����','certificationtype','2' from dual
union select DISTINCT '2','����֤','certificationtype','3'  from dual
union select DISTINCT '4','Ӫҵִ��','certificationtype','4' from dual
union select DISTINCT '5','��ʻ֤','certificationtype','5' from dual
union select DISTINCT '6','��֯��������֤','certificationtype','6' from dual
union select DISTINCT '1','��������','bank_type','1'  from dual
union select DISTINCT '2','ũҵ����','bank_type','2' from dual
union select DISTINCT '3','��������','bank_type','3'  from dual
union select DISTINCT '4','�й�����','bank_type','4' from dual
union select DISTINCT '5','��������','bank_type','5' from dual
union select DISTINCT '6','��ͨ����','bank_type','6' from dual
union select DISTINCT '7','��������','bank_type','7' from dual
union select DISTINCT '8','��������','bank_type','8' from dual
union select DISTINCT '9','�������','bank_type','9' from dual
union select DISTINCT '10','��ҵ����','bank_type','10' from dual
union select DISTINCT '11','�㷢����','bank_type','11' from dual
union select DISTINCT '12','�չ����','bank_type','12' from dual
union select DISTINCT '01','���׶���֪ͨ��Ԥ���ѿ���','infotype','0' from dual
union select DISTINCT '02','���׶���֪ͨ��֧���˻���','infotype','1' from dual
union select DISTINCT '03','���˵��ʼģ��������䣩','infotype','2' from dual
union select DISTINCT '01','�ر�','infostatus','0' from dual
union select DISTINCT '02','�ѿ���','infostatus','1' from dual
union select DISTINCT '','�ر�','infostatus','2' from dual
union select '0','ȫ��','trade_type','0' from dual
union select '100','���˻���ֵ','trade_type','1' from dual
union select '110','�ֽ��˿�','trade_type','2' from dual
union select '120','ת��(��)','trade_type','3' from dual
union select '121','ת��(��)','trade_type','4' from dual
union select '150','IC������','trade_type','5' from dual
union select '151','���˻�����','trade_type','6' from dual
union select '600','�˻�������','trade_type','7' from dual
union select '0','ȫ��','trade_status','0' from dual
union select '1','����','trade_status','1' from dual
union select '2','����','trade_status','2' from dual
union select '3','������','trade_status','3' from dual
union select '4','��ʱ','trade_status','4' from dual
union select '5','����','trade_status','5' from dual
union select '6','������','trade_status','6' from dual
union select '8','ʧЧ','trade_status','7' from dual
union select '10','�˻�','trade_status','8' from dual
union select '10','10Ԫ','phonerecharge','0' from dual
union select '20','20Ԫ','phonerecharge','1' from dual
union select '30','30Ԫ','phonerecharge','2' from dual
union select '50','50Ԫ','phonerecharge','3' from dual
union select '100','100Ԫ','phonerecharge','4' from dual
union select '300','300Ԫ','phonerecharge','5' from dual
union select '0','һ��','codex_lv','0' from dual
union select '1','����','codex_lv','1' from dual
union select '0','��ֵ��','recharge','0' from dual
union select '1','��ֵ�ɹ�','recharge','1' from dual
union select '2','��ֵʧ��','recharge','2' from dual
union select '0','֧���ɹ�','paystatus','0' from dual
union select '1','֧��ʧ��','paystatus','1' from dual
union select '2','�˿����','paystatus','2' from dual
union select '0','������','ofstatus','0' from dual
union select '1','��ֵ�ɹ���Ź�ɡ�','ofstatus','1' from dual
union select '2','��ֵʧ�ܡ�ŷ�ɡ�','ofstatus','2' from dual
union select '1','����','active','' from dual  
union select '0','δ����','active','' from dual
union select '0','ÿ����','taskcycle','' from dual  
union select '1','ÿСʱ','taskcycle','' from dual
union select '2','ÿ��','taskcycle','' from dual
union select '3','ÿ��','taskcycle','' from dual
union select '4','ÿ��','taskcycle','' from dual
union select '5','ֻһ��','taskcycle','' from dual
union select '6','������ʼ','taskcycle','' from dual;