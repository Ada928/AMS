<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="���ݷ����ֹ�ִ��">
<@CommonQueryMacro.CommonQuery id="DszhQueryKA" init="true" submitMode="all" navigate="false">
<table width="1349px">
	
	
	<tr>
		<td>
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btMod,-"  fieldStr="select[40],zh,kh,kdqr,zhjz,xkrq,kzt"  width="100%" hasFrame="true" height="300" readonly="true"/>
		</td>
	</tr>
	<tr>
		<td>
			
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>

<script language="javascript">
function btMod_onClickCheck(button){
    var rec = DszhQueryKA_dataset.firstUnit;
	
	var f = false;
	var kh = null;
	while(rec) {
		if (rec.getValue('select')) {
			kh = rec.getValue("kh");
			f = true;
			break;
		}
		rec = rec.nextUnit;
	}
	if(!f) {
		alert('��ѡ���¼');
		return false;
	}
	showUpdate(kh);
}

function showUpdate(kh){

	showWin("����Ϣ�޸�","${contextPath}/fpages/regonization/ftl/DszhQueryKAUpdate.ftl?kh="+kh,null,null,window);
}
</script>
</@CommonQueryMacro.page>
