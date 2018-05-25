<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�Ǿ����˻���ѯ">
<@CommonQueryMacro.CommonQuery id="FjmzhQuery" init="true" submitMode="all" navigate="false">
<table width="1349px">
	<tr>
		<td>
			<@CommonQueryMacro.Interface id="interface" label="�Ǿ����˻���ѯ" btnNm="��ѯ" colNm=8/>
		</td>
	</tr>
	
	<tr>
		<td>
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btAdd,-,btMod,-,btDel"  fieldStr="select,accountnumber,closedaccount,duediligenceind,selfcertification,accountbalance,accountholdertype,openingfiname,payment"  width="100%" hasFrame="true" height="300" readonly="true"/>
		</td>
	</tr>
	<tr>
		<td>
			
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>

<script language="javascript"> 


function btMod_onClickCheck(button) {
	
	var rec = FjmzhQuery_dataset.firstUnit;
	
	var f = false;
	var accountnumber = null;
	
	while(rec) {
		if (rec.getValue('select')) {
			f = true;
			accountnumber = rec.getValue('accountnumber');
			break;
		}
		rec = rec.nextUnit;
	}
	if(!f) {
		alert('��ѡ���¼');
		return false;
	}
	showUpdate(accountnumber);
	flushCurrentPage();
	
}

function showUpdate(accountnumber){

	showWin("�Ǿ����˻���ѯ�޸�","${contextPath}/fpages/regonization/ftl/FjmzhQueryUpdate.ftl?accountnumber="+accountnumber,null,flushCurrentPage(),window);
	
}



function btDel_postSubmit(button) {
		
		button.url="#";
		//ˢ�µ�ǰҳ
		flushCurrentPage();
		alert("ɾ���ɹ���");	
}

function btDel_onClickCheck(button) {
	var rec = FjmzhQuery_dataset.firstUnit;
	var f = false;
	while(rec) {
		if (rec.getValue('select')) {
			f = true;
		}
		rec = rec.nextUnit;
	}
	if(!f) {
		alert('��ѡ���¼');
		return false;
	}
	return confirm("ȷ��ɾ����¼��");
}

//ˢ�µ�ǰҳ
function flushCurrentPage() {
	FjmzhQuery_dataset.flushData(FjmzhQuery_dataset.pageIndex);
}



</script>
</@CommonQueryMacro.page>
