<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#import "/fpages/regonization/ftl/DszhQueryUpdate.ftl" as DszhQueryUpdate>
<@CommonQueryMacro.page title="���ݷ����ֹ�ִ��">

<@CommonQueryMacro.CommonQuery id="DszhQuery" init="true" submitMode="all" navigate="false">
<table width="1349px">
	<tr>
		<td>
			<@CommonQueryMacro.Interface id="interface" label="���˽����˻�" btnNm="��ѯ" colNm=8/>
		</td>
	</tr>
	
	<tr>
		<td>
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btMod,-,btDel,-,btLoad"  fieldStr="select[40],xxlx,ckrxm,ckrsfzjzl,ckrsfzjhm,jrjgbm,zh,zhzl,bz,zhzt,jlrq"  width="100%" hasFrame="true" height="300" readonly="true"/>
		</td>
	</tr>
	<tr>
		<td>
			
		</td>
	</tr>
</table>
<iframe id="filedownloadfrm"  style="display: none;"></iframe>
<span id="button-tools" style="padding-left:10px"><@CommonQueryMacro.Button id= "btSave"/>&nbsp;<span id="message" >���Ȱ��������ڲ�ѯ,�ٵ���</span></span>
</@CommonQueryMacro.CommonQuery>

<script language="javascript">
window.onload=function(){
	currentDate="2018-04-01";
    DszhQuery_interface_dataset.setValue("jlrq", currentDate);
}
$('#DszhQuery_interface_dataset_btnSubmit').after($('#button-tools'));
 function btSave_postSubmit(button) {
	  	alert("�����ɹ�");
	  } 

function btLoad_onClickCheck(button){
        var jlrq = DszhQuery_dataset.getValue("jlrq");
		document.getElementById("filedownloadfrm").src ="${contextPath}/btLoad?jlrq="+jlrq;
		return false;
  	}
function btDel_onClickCheck(button) {
	var rec = DszhQuery_dataset.firstUnit;
	var f = false;
	while(rec) {
		if (rec.getValue('select')) {
			f = true;
			//break;
		}
		rec = rec.nextUnit;
	}
	if(!f) {
		alert('��ѡ���¼');
		return false;
	}
}


function btMod_onClickCheck(button) {

	var rec = DszhQuery_dataset.firstUnit;
	
	var f = false;
	var zh = null;
	while(rec) {
		if (rec.getValue('select')) {
			zh = rec.getValue("zh");
			f = true;
			break;
		}
		rec = rec.nextUnit;
	}
	if(!f) {
		alert('��ѡ���¼');
		return false;
	}
	showUpdate(zh);
	flushCurrentPage();
}

function btSave_onClickCheck(button) {
	  
	  	flushCurrentPage();
	  	
}

//function btMod_onClick(){
//	var ckrsfzjzl = DszhQuery_dataset.getValue("ckrsfzjzl");
//	var ckrsfzjhm = DszhQuery_dataset.getValue("ckrsfzjhm");
//	var zh = DszhQuery_dataset.getValue("zh");
//	showUpdate(zh);
	
//}

function showUpdate(zh){
	showWin("���˽����˻��޸�","${contextPath}/fpages/regonization/ftl/DszhQueryUpdate.ftl?zh="+zh,null,null,window);
	
}

function btDel_onClickCheck(button) {
		return confirm("ȷ��ɾ����¼��");
}
	
function btDel_postSubmit(button) {
		
		button.url="#";
		//ˢ�µ�ǰҳ
		flushCurrentPage();
}
//ˢ�µ�ǰҳ
function flushCurrentPage() {
	DszhQuery_dataset.flushData(DszhQuery_dataset.pageIndex);
}

</script>
</@CommonQueryMacro.page>
