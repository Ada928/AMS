<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#import "/fpages/regonization/ftl/FjmzhQueryUpdate.ftl" as FjmzhQueryUpdate>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<script src="templets/ui/js/jquery-1.8.2.min.js"></script>
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
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btAdd,-,btMod,-,btDel,-,btImport,-,btLoad"  fieldStr="select,accountNumber,sAccountType,report_status,sSelfSertification,iAccountBalance,sACC_currCode,sAccountHolderType,sOpeningFIName"  width="100%" hasFrame="true" height="300" readonly="true"/>
		</td>
	</tr>
	<tr>
		<td>
		</td>
	</tr>
</table>
<iframe id="filedownloadfjm"  style="display: none;"></iframe>
<span id="button-tools" style="padding-left:10px"><@CommonQueryMacro.Button id= "btSave"/>&nbsp;<span id="message" ><@bean.message key="FjmzhQuery.message" /></span></span>

</@CommonQueryMacro.CommonQuery>
<script language="javascript"> 

function btSave_onClickCheck(button){
	var sAccountType = FjmzhQuery_interface_dataset.getValue("sAccountType");
	if(sAccountType == null || sAccountType == ""){
    	alert("���������ļ���������Ϊ��ѡ�");
		return false;
	}
	var a = FjmzhQuery_dataset.length;
	if(a<1){
		return confirm("�б���δ��ѯ������,�Ѿ�Ϊ��ѡ�������ݱ���,�Ƿ�ȷ��?"); 
		document.getElementById("filedownloadfjm").src ="${contextPath}/Fjmimport?sAccountType="+sAccountType;
		alert("�����ɹ�");
		return false;
	}
	document.getElementById("filedownloadfjm").src ="${contextPath}/Fjmimports?sAccountType="+sAccountType;
	alert("�����ɹ�");
	return false;
}

function btImport_onClickCheck(button){
	var sAccountType = FjmzhQuery_interface_dataset.getValue("sAccountType");
	if(sAccountType == null || sAccountType == ""){
    	alert("���������ļ���������Ϊ��ѡ�");
		return false;
	}
	document.getElementById("filedownloadfjm").src ="${contextPath}/Fjmimport?sAccountType="+sAccountType;
	alert("�����ɹ�");
	return false;
}


function btSave_needCheck(){
	return false;
}

$('#FjmzhQuery_interface_dataset_btnSubmit').after($('#button-tools'));
 function btSave_postSubmit(button) {
	alert("�����ɹ�");
 } 

function btLoad_onClickCheck(button){
    var sAccountType = FjmzhQuery_interface_dataset.getValue("sAccountType");
	document.getElementById("filedownloadfjm").src ="${contextPath}/FjmLoad?sAccountType="+sAccountType;
	return false;
}

function btMod_onClickCheck(button) {
	
	var rec = FjmzhQuery_dataset.record;
	
	var f = false;
	var accountNumber = null;
	var accHType = null;
	
	while(rec) {
		if (rec.getValue('select')) {
			f = true;
			accountNumber = rec.getValue('accountNumber');
			accHType = rec.getValue('sAccountHolderType');
			break;
		}
		rec = rec.nextUnit;
	}
	
	if(!f) {
		alert('��ѡ���¼');
		return false;
	}
	showUpdate(accountNumber,accHType);
	//flushCurrentPage();
	
}

function showUpdate(accountNumber,accHType){
	//alert(accountNumber+"&&&&"+accHType);
	showWin("�Ǿ����˻���ѯ�޸�","${contextPath}/fpages/regonization/ftl/FjmzhQueryUpdate.ftl?accountNumber="+accountNumber+"&sAccountHolderType="+accHType,null,flushCurrentPage(),window);
	
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
