<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="�����˻�">
<@CommonQueryMacro.CommonQuery id="DszhQueryLM" init="true" submitMode="all" navigate="false">
<table width="1349px">
	<tr>
		<td>
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btNew"  fieldStr="select[40],zh,ckrxm,ckrsfzjzl,ckrsfzjhm,sfzjdqr,dqdm,ckrlb,ckrgjdq,ckrxb,operation"  width="100%" hasFrame="false" height="300" readonly="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.FloatWindow id="signWindow" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="�����˻�����"
        			  fieldStr="zh,ckrxm,ckrsfzjzl,ckrsfzjhm,sfzjdqr,dqdm,ckrlb,ckrgjdq,ckrxb" colNm=4/>
        			 </br>
      				<@CommonQueryMacro.Button id= "btSave"/>
      			</div>
     		 </@CommonQueryMacro.FloatWindow>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.FloatWindow id="signWindowEdit" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="�����˻��޸�"
        			  fieldStr="zh,ckrxm,ckrsfzjzl,ckrsfzjhm,sfzjdqr,dqdm,ckrlb,ckrgjdq,ckrxb" colNm=4/>
        			 </br>
      				<@CommonQueryMacro.Button id= "btSaveEdit"/>
      			</div>
     		 </@CommonQueryMacro.FloatWindow>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>

<script language="javascript">

//��λһ�м�¼
	function locate(zh,ckrsfzjhm) {
	
		var record = DszhQueryLM_dataset.find(["zh","ckrsfzjhm"],[zh,ckrsfzjhm]);
		if(record) {
			DszhQueryLM_dataset.setRecord(record);
		}
	}
//ϵͳˢ�µ�Ԫ��
	function datatable1_operation_onRefresh(cell,value,record) {
		if(record) {
			var zh = record.getValue("zh");
			var ckrsfzjhm = record.getValue("ckrsfzjhm");
			cell.innerHTML="<center><a href=\"JavaScript:showUpdate('"+zh+"','"+ckrsfzjhm+"')\">�޸�</a></center>";
		}else {//�������ڼ�¼ʱ
		 cell.innerHTML="&nbsp;";
		}
			
	}



var name = null;
window.onload=function(){
	var sname = GetQueryString("zh");
	 
	if(sname!=null) 
	{ 
		name = decodeURIComponent(sname); 
	}
}

function GetQueryString(name) { 
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r!=null) return (r[2]); 
	return null; 
}





function btNew_onClick(button){
	DszhQueryLM_dataset.setValue("zh",name);
	subwindow_signWindow.show();	  
}

//�޸�
function showUpdate(zh,ckrsfzjhm){
	locate(zh,ckrsfzjhm);
	subwindow_signWindowEdit.show();  
}

function btSave_postSubmit(button)
  {
	button.url="#";
	//alert("����ɹ�");
	subwindow_signWindow.hide();
	DszhQueryLM_dataset.flushData(DszhQueryLM_dataset.pageIndex);
  }

function signWindow_floatWindow_beforeClose(subwindow){
	
	 DszhQueryLM_dataset.cancelRecord();
	 return true;
}
	
function signWindow_floatWindow_beforeHide(subwindow){
	return signWindow_floatWindow_beforeClose(subwindow);
}

//ˢ�µ�ǰҳ
function flushCurrentPage() {
	DszhQueryLM_dataset.flushData(DszhQueryLM_dataset.pageIndex);
}

//�����ˢ�µ�ǰҳ
function btSaveEdit_postSubmit(button) {
	button.url="#";
	subwindow_signWindowEdit.close();
	flushCurrentPage();
}
</script>
</@CommonQueryMacro.page>
